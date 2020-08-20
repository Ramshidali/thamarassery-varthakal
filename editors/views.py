from django.shortcuts import render, redirect
from django.core.files.storage import FileSystemStorage
from . models import registration,news_field,advetiment_field,adv_position,news_place,news_nation,news_district,whatsapp_link
from django.contrib.auth.models import User
from django.contrib.auth import authenticate,logout
from django.contrib import messages
import datetime
import re


# Create your views here.
def reg(request):
    return render(request,'registration.html')

def signup(request):
    first_name = request.POST['fname']
    last_name = request.POST['lname']

    phone_regex = '[6-9]{1}[0-9]{9}'
    phone = request.POST['phone']
    if (re.search(phone_regex, phone)) is None:
        messages.success(request, 'Invalid Phone Number Pattern...!\nFirst digit 6-9')
        return render(request, 'registration.html')

    email_regex = '[a-z0-9._%+-]{3,}@[a-z]{3,}([.]{1}[a-z]{2,}|[.]{1}[a-z]{2,}[.]{1}[a-z]{2,})'
    email = request.POST['email']
    if (re.search(email_regex, email)) is None:
        print("invalid")
        messages.success(request, 'Invalid Email Pattern...!\nexample@mail.com')
        return render(request, 'registration.html')

    password = request.POST['password']
    c_password = request.POST['cpassword']

    # image = request.FILES['image']
    # fs = FileSystemStorage()
    # fs.save(image.name, image)

    if password == c_password:
        user = User.objects.create_user(username=email, password=password, first_name=first_name, last_name=last_name, email=email)
        user.save()
        reg = registration(id=user, phone=phone, user_type="pending")
        reg.save()
        messages.success(request, 'Registration Successfully Completed, Contact Your Admin...')
        return render(request, 'login.html')

    else:
        return '''
                        <script>
                            alert('Password not matching...!!!')
                        </script>

            '''
        return redirect('/writer/registration/')



def login(request):
    return render(request,'login.html')

def signin(request):
    if request.method == 'GET':
        messages.success(request, 'Login Timeout, Please Login...')
        return render(request, 'login.html')


    username = request.POST['u_name']
    passwrd = request.POST['password']


    user = authenticate(request, username=username, password=passwrd)
    print(user)
    if user is None:
        if user.is_active:
            login(request, user)
        else:
            print("not user")
            messages.success(request, 'You are not in Records Please Register First...!')
            return render(request, 'registration.html')
    else:
        user_type = registration.objects.get(id=user)
        print(user_type)
        print("editor")
        if (user_type.user_type == "editor"):
            request.session['id'] = user.pk

            print(request.session['id'])
            print("hai")
            user = User.objects.get(pk=request.session['id'])

            n_district = news_district.objects.all()
            n_nation = news_nation.objects.all()
            n_palce = news_place.objects.all()


            news = {
                'editor': user,
                'n_district': n_district,
                'n_place' : n_palce,
                'n_nation': n_nation,
                'usertype' : user_type,
            }
            return render(request, 'admin_page.html', news)

        elif (user_type.user_type == "admin"):
            request.session['id'] = user.pk

            print(request.session['id'])
            print("hai")
            user = User.objects.get(pk=request.session['id'])

            n_district = news_district.objects.all()
            n_nation = news_nation.objects.all()
            n_palce = news_place.objects.all()


            news = {
                'editor': user,
                'n_district': n_district,
                'n_place' : n_palce,
                'n_nation': n_nation,
                'usertype': user_type,
            }
            return render(request, 'admin_page.html', news)
        else:
            print("pending")
            if (user_type.user_type == "pending"):
                messages.success(request, 'Your Membership is not Accepted Contact Your Admin...!')
                return redirect('/writer/')




def edit_corner(request):
    user = User.objects.get(pk=request.session['id'])
    user_type = registration.objects.get(id=user)

    if user is None:
        messages.success(request, 'Login Timeout, Please Login...')
        return render(request, 'login.html')
    else:
        n_district = news_district.objects.all()
        n_nation = news_nation.objects.all()
        n_palce = news_place.objects.all()

        news = {
            'editor': user,
            'n_district': n_district,
            'n_place': n_palce,
            'n_nation': n_nation,
            'usertype': user_type,
        }

        return render(request,'admin_page.html',news)



def post_news(request):
    editor = User.objects.get(pk=request.session['id'])
    print(editor.pk)

    if editor is None:
        messages.success(request, 'Login Timeout, Please Login...')
        return render(request, 'login.html')
    else:
        x = datetime.date.today()
        print(x)
        headding = request.POST['n_head']
        print(headding)
        content = request.POST['n_content']
        print(content)
        region = request.POST['region']
        print(region)

        if (region == '2'):
            district = request.POST['d_district']
        elif (region == '3'):
            district = request.POST['d_district']
        else:
            district = request.POST['district']
        print(district)

        if (district == '11'):
            place = request.POST['place']
        else:
            place = request.POST['d_place']
        print(place)

        image = request.FILES['image']
        fs = FileSystemStorage()
        fs.save(image.name, image)
        print(image)

        main_news = request.POST['main_news']
        print(main_news)

        breaking_news = request.POST['breaking_news']
        print(breaking_news)

        news = news_field(editor_id_id=editor.pk, published_date=x, news_title=headding, news_content=content,
                          news_nation_id=region,
                          news_district_id=district, news_place_id=place, news_image=image, main_news=main_news,
                          breaking_news=breaking_news)
        news.save()
        return redirect('/writer/edit_corner/')




def adv_page(request):
    user = User.objects.get(pk=request.session['id'])
    user_type = registration.objects.get(id=user)
    ad_position = adv_position.objects.all()

    if user is None:
        messages.success(request, 'Login Timeout, Please Login...')
        return render(request, 'login.html')
    else:
        u_type = {
            'usertype' : user_type,
            'ad_position' : ad_position,
        }
        return render(request,'advetisement.html',u_type)

def ad_post(request):
    user = User.objects.get(pk=request.session['id'])

    if user is None:
        messages.success(request, 'Login Timeout, Please Login...')
        return render(request, 'login.html')
    else:
        d = datetime.date.today()
        head = request.POST['headding']
        position = request.POST['ad_position']
        img = request.FILES['image']
        fs = FileSystemStorage()
        fs.save(img.name, img)

        adv = advetiment_field(user_id_id=user.pk, date_of_publish=d, adv_content=head,ad_position_id=position,adv_images=img)
        adv.save()
        return redirect('/writer/adv_page/')

def view_adv(request):
    user = User.objects.get(pk=request.session['id'])
    user_type = registration.objects.get(id=user)
    adv = advetiment_field.objects.all()

    if user is None:
        messages.success(request, 'Login Timeout, Please Login...')
        return render(request, 'login.html')
    else:

        advs ={
            'usertype': user_type,
            'ads' : adv,
        }
        return render(request, 'ad_view.html',advs)


def my_record(request):
    user = User.objects.get(pk=request.session['id'])
    user_type = registration.objects.get(id=user)

    if user is None:
        messages.success(request, 'Login Timeout, Please Login...')
        return render(request, 'login.html')
    else:
        date = datetime.date.today()
        day = datetime.date.today().weekday()
        days = ['തിങ്കള്‍', 'ചൊവ്വ', 'ബുധന്‍', 'വ്യാഴം', 'വെള്ളി', 'ശനി', 'ഞായര്‍']
        user = User.objects.get(pk=request.session['id'])
        data = news_field.objects.filter(editor_id=user.pk).order_by('-published_date')
        nation = news_nation.objects.all()
        whatsapp = whatsapp_link.objects.latest('id')
        record = {
            'records': data,
            'nation': nation,
            'date': date,
            'day': days[day],
            'w_link': whatsapp,
            'usertype': user_type,
        }

        return render(request, 'my_records.html', record)



def all_members(request):
    user = User.objects.get(pk=request.session['id'])
    user_type = registration.objects.get(id=user)

    if user is None:
        messages.success(request, 'Login Timeout, Please Login...')
        return render(request, 'login.html')
    else:
        users = User.objects.all().exclude(registration__user_type="pending")
        reg = registration.objects.all()
        members = {
            'users': users,
            'reg': reg,

            'usertype': user_type,
        }

        return render(request, 'all_members.html', members)

def pending_members(request):
    user = User.objects.get(pk=request.session['id'])
    user_type = registration.objects.get(id=user)

    if user is None:
        messages.success(request, 'Login Timeout, Please Login...')
        return render(request, 'login.html')
    else:
        users = User.objects.filter(registration__user_type='pending')
        reg = registration.objects.filter(user_type='pending')

        p_members = {
            'user': users,
            'reg': reg,
            'usertype': user_type,
        }
        print(users)
        print(reg)
        print(p_members)
        return render(request, 'pending editors.html', p_members)

#
# def view_profile(request):
#     user = User.objects.get(pk=request.session['id'])
#     reg = registration.objects.get(pk=request.session['id'])
#
#     view = {
#         'name' : user,
#         'contact' : reg,
#     }
#     return render(request,'view-profile.html',view)


# def update_profile(request):
#     ids = User.objects.get(pk=request.session['id'])
#     # first_name = request.POST['f_name']
#     # last_name = request.POST['l_name']
#     # phone = request.POST['phoney']
#     # email = request.POST['emaily']
#
#     image = request.FILES['image']
#     fs = FileSystemStorage()
#     fs.save(image.name, image)
#     #
#     # user = User.objects.create_user(id=ids, username=email, first_nam)
#     registration.objects.filter(pk=request.session['id']).update(image=image)
#
#
#
#     return redirect('/writer/view_profile/')



def whatsapp(request):
    user = User.objects.get(pk=request.session['id'])
    user_type = registration.objects.get(id=user)
    if user is None:
        messages.success(request, 'Login Timeout, Please Login...')
        return render(request, 'login.html')
    else:
        u_type = {
            'usertype': user_type
        }
        return render(request,'whatsapp.html',u_type)

def upload_link(request):
    user = User.objects.get(pk=request.session['id'])
    if user is None:
        messages.success(request, 'Login Timeout, Please Login...')
        return render(request, 'login.html')
    else:
        link = request.POST['link']
        upload =  whatsapp_link(editor_id=user, whatsapp_link_urls=link)
        upload.save()
        return redirect('/writer/whatsapp_link/')




def u_approve(request,id):
    user = User.objects.get(pk=request.session['id'])
    if user is None:
        messages.success(request, 'Login Timeout, Please Login...')
        return render(request, 'login.html')
    else:
        registration.objects.filter(pk=id).update(user_type="editor")
        return redirect('/writer/all_members/')

def u_reject(request,id):
    user = User.objects.get(pk=request.session['id'])
    if user is None:
        messages.success(request, 'Login Timeout, Please Login...')
        return render(request, 'login.html')
    else:
        u_d = User.objects.get(pk=id)
        u_d.delete()
        return redirect('/writer/all_members/')

def n_reject(request,id):
    user = User.objects.get(pk=request.session['id'])
    if user is None:
        messages.success(request, 'Login Timeout, Please Login...')
        return render(request, 'login.html')
    else:
        n_d = news_field.objects.get(pk=id)
        n_d.delete()
        return redirect('/writer/pending_members/')


def logout_view(request):
    logout(request)
    return redirect('/writer/')