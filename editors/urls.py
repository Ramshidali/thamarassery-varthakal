from django.urls import path
from . import views

app_name = 'editors'


urlpatterns = [
    path('',views.login,name='login'),
    path('registration/', views.reg, name='registration'),
    path('signup/',views.signup, name='signup'),
    path('signin/',views.signin, name='signin'),
    path('edit_corner/',views.edit_corner, name='edit_corner'),
    path('n_post/',views.post_news, name='n_post'),
    path('adv_page/',views.adv_page, name='adv_page'),
    path('ad_post/',views.ad_post,name='ad_post'),
    path('ad_view/',views.view_adv,name='view_adv'),
    path('my_record/',views.my_record,name='my_record'),
    path('all_members/',views.all_members,name='all_members'),
    path('pending_members/',views.pending_members,name='pending_members'),
    # path('view_profile/',views.view_profile,name='view_profile'),
    # path('update_profile/',views.update_profile,name='update_profile'),
    path('whatsapp_link/',views.whatsapp,name='whatsapp'),
    path('edit_about/',views.editabout,name='editabout'),
    path('add_about_user/',views.add_user_about,name='add_user_about'),
    path('add_about_content/',views.add_about_content,name='add_about_content'),
    path('about_delete_content/<int:id>/',views.delete_about_content,name='delete_about_content'),
    path('about_delete_editors/<int:id>/',views.delete_about_editors,name='delete_about_editors'),
    path('upload_link/',views.upload_link,name='upload_link'),
    path('u_approve/<int:id>/',views.u_approve,name='u_approve'),
    path('u_reject/<int:id>/',views.u_reject,name='u_reject'),
    path('n_reject/<int:id>/',views.n_reject,name='n_reject'),
    path('logout/',views.logout_view, name='logout'),
]