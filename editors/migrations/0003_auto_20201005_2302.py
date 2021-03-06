# Generated by Django 2.2.6 on 2020-10-05 17:32

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('editors', '0002_auto_20201005_2259'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='registration',
            name='image',
        ),
        migrations.RemoveField(
            model_name='registration',
            name='video_link',
        ),
        migrations.AddField(
            model_name='news_field',
            name='video_link',
            field=models.URLField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='news_field',
            name='news_image',
            field=models.ImageField(blank=True, null=True, upload_to=''),
        ),
    ]
