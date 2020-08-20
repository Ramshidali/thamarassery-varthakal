# Generated by Django 2.2.6 on 2020-08-19 16:31

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('auth', '0011_update_proxy_permissions'),
    ]

    operations = [
        migrations.CreateModel(
            name='adv_position',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('adv_position', models.CharField(max_length=10)),
            ],
        ),
        migrations.CreateModel(
            name='news_district',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('news_district', models.CharField(blank=True, max_length=50, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='news_nation',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('news_nation', models.CharField(blank=True, max_length=50, null=True)),
                ('nation_logo', models.ImageField(blank=True, null=True, upload_to='')),
            ],
        ),
        migrations.CreateModel(
            name='news_place',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('news_place', models.CharField(blank=True, max_length=50, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='registration',
            fields=[
                ('id', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to=settings.AUTH_USER_MODEL)),
                ('phone', models.BigIntegerField()),
                ('user_type', models.CharField(max_length=10)),
                ('image', models.ImageField(upload_to='')),
            ],
        ),
        migrations.CreateModel(
            name='whatsapp_link',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('whatsapp_link_urls', models.URLField(blank=True, db_index=True, unique=True)),
                ('editor_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='news_field',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('published_date', models.DateTimeField(blank=True, null=True)),
                ('news_title', models.CharField(max_length=10000)),
                ('news_content', models.CharField(max_length=10000)),
                ('news_image', models.ImageField(upload_to='')),
                ('main_news', models.IntegerField()),
                ('breaking_news', models.IntegerField()),
                ('editor_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
                ('news_district', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='editors.news_district')),
                ('news_nation', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='editors.news_nation')),
                ('news_place', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='editors.news_place')),
            ],
        ),
        migrations.CreateModel(
            name='advetiment_field',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date_of_publish', models.DateTimeField(blank=True, null=True)),
                ('adv_images', models.ImageField(upload_to='')),
                ('adv_content', models.CharField(max_length=100)),
                ('ad_position', models.ForeignKey(blank=True, on_delete=True, to='editors.adv_position')),
                ('user_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
