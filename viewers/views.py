from django.shortcuts import render
from  editors.models import registration,news_field,advetiment_field,news_place,news_nation,aboutus,aboutus_content
from django.contrib.auth.models import User
from datetime import date,datetime

# Create your views here.
def index(request):

    news = news_field.objects.order_by('-id')[:50]
    gulf = news_field.objects.filter(news_nation_id=2).order_by('-id')[:10]
    main_a = news_field.objects.filter(main_news=2).latest('id')
    main_b = news_field.objects.filter(main_news=2).exclude(pk=main_a.pk).order_by('-id')[:2]
    local_tsy = news_field.objects.filter(news_place_id=1).latest('id')
    local_tsy_tbl = news_field.objects.filter(news_place_id=1).exclude(pk=local_tsy.pk).order_by('-id')[:5]
    local_kdly = news_field.objects.filter(news_place_id=2).latest('id')
    local_kdly_tbl = news_field.objects.filter(news_place_id=2).exclude(pk=local_kdly.pk).order_by('-id')[:5]
    local_trvpdi = news_field.objects.filter(news_place_id=5).latest('id')
    local_trvpdi_tbl = news_field.objects.filter(news_place_id=5).exclude(pk=local_trvpdi.pk).order_by('-id')[:5]
    breaking_news = news_field.objects.filter(breaking_news=2).order_by('-id')

    adv_view_carousel = advetiment_field.objects.filter(ad_position_id=1).order_by('-id')
    adv_view_small = advetiment_field.objects.filter(ad_position_id=2).order_by('-id')
    adv_view_side = advetiment_field.objects.filter(ad_position_id=3).order_by('-id')
    adv_view_banner = advetiment_field.objects.filter(ad_position_id=1).order_by('-id')[:1]


    all_news = {
        'latest_news' : news,
        'gulf_news': gulf,
        'main_news_a' : main_a,
        'main_news_b' : main_b,
        'local_tsy_main' : local_tsy,
        'local_tsy_tbl'  : local_tsy_tbl,
        'local_kdly_main': local_kdly,
        'local_kdly_tbl': local_kdly_tbl,
        'local_trvpdi_main': local_trvpdi,
        'local_trvpdi_tbl': local_trvpdi_tbl,
        'breaking' : breaking_news,

        'adv_carousel' : adv_view_carousel,
        'adv_small' : adv_view_small,
        'adv_side' : adv_view_side,
        'adv_banner': adv_view_banner,
    }


    return render(request,'index.html',all_news)



def latest(request):
    n_latest = news_field.objects.order_by('-id')[:100]
    inter = news_field.objects.filter(news_nation_id=3).order_by('-id')[:1]
    n_kerala = news_field.objects.filter(news_nation_id=1).order_by('-id')[:1]
    n_gulf = news_field.objects.filter(news_nation_id=2).order_by('-id')[:1]
    n_local = news_field.objects.filter(news_district_id=11).order_by('-id')[:1]

    image = news_nation.objects.filter(pk='4')

    adv_view_carousel = advetiment_field.objects.filter(ad_position_id=1).order_by('-id')
    adv_view_side = advetiment_field.objects.filter(ad_position_id=3).order_by('-id')[:5]
    adv_view_banner = advetiment_field.objects.filter(ad_position_id=4).order_by('-id')

    t_news ={
        'news': n_latest,
        'internation' : inter,
        'kerala_n' : n_kerala,
        'gulf_n' : n_gulf,
        'local_n' : n_local,

        'adv_carousel' : adv_view_carousel,
        'adv_side' : adv_view_side,
        'adv_banner': adv_view_banner,
        'logo_img': image,
    }
    return render(request,'news_types.html',t_news)



def gulf(request):
    gulf = news_field.objects.filter(news_nation_id=2).order_by('-id')[:100]
    inter = news_field.objects.filter(news_nation_id=3).order_by('-id')[:1]
    n_kerala = news_field.objects.filter(news_nation_id=1).order_by('-id')[:1]
    n_gulf = news_field.objects.filter(news_nation_id=2).order_by('-id')[:1]
    n_local = news_field.objects.filter(news_district_id=11).order_by('-id')[:1]

    image = news_nation.objects.filter(pk='2')

    adv_view_carousel = advetiment_field.objects.filter(ad_position_id=1).order_by('-id')
    adv_view_side = advetiment_field.objects.filter(ad_position_id=3).order_by('-id')[:5]
    adv_view_banner = advetiment_field.objects.filter(ad_position_id=4).order_by('-id')

    t_news ={
        'news': gulf,
        'internation': inter,
        'kerala_n': n_kerala,
        'gulf_n': n_gulf,
        'local_n': n_local,

        'adv_carousel' : adv_view_carousel,
        'adv_side' : adv_view_side,
        'adv_banner': adv_view_banner,
        'logo_img': image,
    }
    return render(request,'news_types.html',t_news)



def internation(request):
    inter = news_field.objects.filter(news_nation_id=3).order_by('-id')
    m_inter = news_field.objects.filter(news_nation_id=3).order_by('-id')[:1]
    n_kerala = news_field.objects.filter(news_nation_id=1).order_by('-id')[:1]
    n_gulf = news_field.objects.filter(news_nation_id=2).order_by('-id')[:1]
    n_local = news_field.objects.filter(news_district_id=11).order_by('-id')[:1]

    adv_view_carousel = advetiment_field.objects.filter(ad_position_id=1).order_by('-id')
    adv_view_side = advetiment_field.objects.filter(ad_position_id=3).order_by('-id')[:5]
    adv_view_banner = advetiment_field.objects.filter(ad_position_id=4).order_by('-id')

    image = news_nation.objects.filter(pk='3')

    inter_news ={
        'news': inter,
        'internation': inter,
        'kerala_n': n_kerala,
        'gulf_n': n_gulf,
        'local_n': n_local,

        'adv_carousel' : adv_view_carousel,
        'adv_side' : adv_view_side,
        'adv_banner': adv_view_banner,
        'logo_img': image,
    }
    return render(request,'news_types.html',inter_news)



def kerala(request):
    kerala = news_field.objects.filter(news_nation_id=1).order_by('-id')[:100]
    inter = news_field.objects.filter(news_nation_id=3).order_by('-id')[:1]
    n_kerala = news_field.objects.filter(news_nation_id=1).order_by('-id')[:1]
    n_gulf = news_field.objects.filter(news_nation_id=2).order_by('-id')[:1]
    n_local = news_field.objects.filter(news_district_id=11).order_by('-id')[:1]

    adv_view_carousel = advetiment_field.objects.filter(ad_position_id=1).order_by('-id')
    adv_view_side = advetiment_field.objects.filter(ad_position_id=3).order_by('-id')[:5]
    adv_view_banner = advetiment_field.objects.filter(ad_position_id=4).order_by('-id')

    image = news_nation.objects.filter(pk='1')

    k_news ={
        'news': kerala,
        'internation': inter,
        'kerala_n': n_kerala,
        'gulf_n': n_gulf,
        'local_n': n_local,

        'adv_carousel' : adv_view_carousel,
        'adv_side' : adv_view_side,
        'adv_banner': adv_view_banner,
        'logo_img': image,
    }
    return render(request,'news_types.html',k_news)




def local(request):
    news_page_type = 'Local'
    tsy_news = news_field.objects.filter(news_place_id=1).order_by('-id')[:1]
    tsy_newss = news_field.objects.filter(news_place_id=1).exclude(pk=id(tsy_news)).order_by('-id')[:50]
    kdly_news = news_field.objects.filter(news_place_id=2).order_by('-id')[:1]
    kdly_newss = news_field.objects.filter(news_place_id=2).exclude(pk=id(kdly_news)).order_by('-id')[:50]
    blsry_news = news_field.objects.filter(news_place_id=3).order_by('-id')[:1]
    blsry_newss = news_field.objects.filter(news_place_id=3).exclude(pk=id(blsry_news)).order_by('-id')[:50]
    mukkam_news = news_field.objects.filter(news_place_id=4).order_by('-id')[:1]
    mukkam_newss = news_field.objects.filter(news_place_id=4).exclude(pk=id(mukkam_news)).order_by('-id')[:50]
    thiruvampady_news = news_field.objects.filter(news_place_id=5).order_by('-id')[:1]
    thiruvampady_newss = news_field.objects.filter(news_place_id=5).exclude(pk=id(thiruvampady_news)).order_by('-id')[:50]
    puthuppady_news = news_field.objects.filter(news_place_id=6).order_by('-id')[:1]
    puthuppady_newss = news_field.objects.filter(news_place_id=6).exclude(pk=id(puthuppady_news)).order_by('-id')[:50]
    kattippara_news = news_field.objects.filter(news_place_id=7).order_by('-id')[:1]
    kattippara_newss = news_field.objects.filter(news_place_id=7).exclude(pk=id(kattippara_news)).order_by('-id')[:50]
    inter = news_field.objects.filter(news_nation_id=3).order_by('-id')[:1]
    n_kerala = news_field.objects.filter(news_nation_id=1).order_by('-id')[:1]
    n_gulf = news_field.objects.filter(news_nation_id=2).order_by('-id')[:1]
    n_local = news_field.objects.filter(news_district_id=11).order_by('-id')[:1]

    adv_view_carousel = advetiment_field.objects.filter(ad_position_id=1).order_by('-id')
    adv_view_side = advetiment_field.objects.filter(ad_position_id=3).order_by('-id')[:5]
    adv_view_banner = advetiment_field.objects.filter(ad_position_id=4).order_by('-id')




    l_news ={
        'm_tsy_news' : tsy_news,
        't_tsy_news' : tsy_newss,
        'm_kdly_news': kdly_news,
        't_kdly_news': kdly_newss,
        'm_blsry_news': blsry_news,
        't_blsry_news': blsry_newss,
        'm_mukkam_news': mukkam_news,
        't_mukkam_news': mukkam_newss,
        'm_trvmpdy_news': thiruvampady_news,
        't_trvmpdy_news': thiruvampady_newss,
        'm_puthuppady_news': puthuppady_news,
        't_puthuppady_news': puthuppady_newss,
        'm_kattippara_news': kattippara_news,
        't_kattippara_news': kattippara_newss,
        'internation': inter,
        'kerala_n': n_kerala,
        'gulf_n': n_gulf,
        'local_n': n_local,
        'type_image': news_page_type,

        'adv_carousel': adv_view_carousel,
        'adv_side': adv_view_side,
        'adv_banner': adv_view_banner,
    }
    return render(request,'local_news.html',l_news)




def news_view(request,id):
    news = news_field.objects.get(pk=id)
    n_latest = news_field.objects.exclude(pk=id).order_by('-id')[:50]
    inter = news_field.objects.filter(news_nation_id=3).order_by('-id')[:1]
    n_kerala = news_field.objects.filter(news_nation_id=1).order_by('-id')[:1]
    n_gulf = news_field.objects.filter(news_nation_id=2).order_by('-id')[:1]
    n_local = news_field.objects.filter(news_district_id=11).order_by('-id')[:1]

    adv_view_carousel = advetiment_field.objects.filter(ad_position_id=1).order_by('-id')
    adv_view_side = advetiment_field.objects.filter(ad_position_id=3).order_by('-id')[:5]
    adv_view_banner = advetiment_field.objects.filter(ad_position_id=4).order_by('-id')

    data = {
        'n_view':news,
        'l_news':n_latest,
        'internation': inter,
        'kerala_n': n_kerala,
        'gulf_n': n_gulf,
        'local_n': n_local,

        'adv_carousel': adv_view_carousel,
        'adv_side': adv_view_side,
        'adv_banner': adv_view_banner,

    }
    return render(request,'news_view.html',data)



def about (request):
    contents = aboutus_content.objects.order_by('-id')
    user_details = aboutus.objects.all()

    context = {
        'content': contents,
        'about_details': user_details,
    }
    return render(request,'about.html',context)


