# Generated by Django 2.1.5 on 2019-05-22 10:04

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('chatapp', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='chatroommember',
            name='is_online',
            field=models.BooleanField(default=False, verbose_name='オンライン'),
        ),
        migrations.AddField(
            model_name='chatroommember',
            name='last_logout',
            field=models.DateTimeField(default=django.utils.timezone.now, null=True, verbose_name='最終ログアウト時間'),
        ),
        migrations.AddField(
            model_name='user',
            name='alert_freq',
            field=models.CharField(choices=[(0, '通知しない'), (1, '毎回'), (2, '30分に1回'), (3, '1時間に1回')], default=0, max_length=50, verbose_name='通知頻度'),
        ),
    ]
