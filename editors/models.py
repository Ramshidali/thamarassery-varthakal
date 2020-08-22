from django.db import models
from django.contrib.auth.models import User

# Create your models here.

class registration(models.Model):
    id = models.OneToOneField(User,on_delete=models.CASCADE,primary_key=True)
    phone = models.BigIntegerField()
    user_type = models.CharField(max_length=10,null=False,blank=False)
    image = models.ImageField(null=False,blank=False)

    def __str__(self):
        return self.id.first_name

class adv_position(models.Model):
    adv_position = models.CharField(max_length=10,null=False,blank=False)

    def __str__(self):
        return self.adv_position

class advetiment_field(models.Model):

    user_id = models.ForeignKey(User,on_delete=models.CASCADE)
    date_of_publish = models.DateTimeField(null=True,blank=True)
    adv_images = models.ImageField(null=False,blank=False)
    adv_content = models.CharField(max_length=100,null=False,blank=False)
    ad_position = models.ForeignKey(adv_position,on_delete=True,blank=True)

    def __str__(self):
        return self.user_id.first_name

class news_district(models.Model):
    news_district = models.CharField(max_length=50,null=True,blank=True)

    def __str__(self):
        return self.news_district

class news_place(models.Model):
    news_place = models.CharField(max_length=50,null=True,blank=True)

    def __str__(self):
        return self.news_place

class news_nation(models.Model):
    news_nation = models.CharField(max_length=50,null=True,blank=True)
    nation_logo = models.ImageField(null=True,blank=True)

    def __str__(self):
        return self.news_region

class news_field(models.Model):

    editor_id = models.ForeignKey(User,on_delete=models.CASCADE)
    published_date = models.DateTimeField(null=True,blank=True)
    news_title = models.CharField(max_length=10000,null=False,blank=False)
    news_content = models.CharField(max_length=10000,null=False,blank=False)
    news_image = models.ImageField(null=False)
    main_news = models.IntegerField(null=False)
    breaking_news = models.IntegerField(null=False)
    news_district = models.ForeignKey(news_district, on_delete=models.CASCADE)
    news_place = models.ForeignKey(news_place,on_delete=models.CASCADE)
    news_nation = models.ForeignKey(news_nation,on_delete=models.CASCADE)


    def __str__(self):
        return self.news_title

class whatsapp_link(models.Model):
    whatsapp_link_urls = models.URLField(db_index=True, unique=True, blank=True)
    editor_id = models.ForeignKey(User,on_delete=models.CASCADE)
    def __str__(self):
        return self.whatsapp_link_urls