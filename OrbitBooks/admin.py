# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin

# Register your models here.
from OrbitBooks.models import *

admin.site.register(Sponsor)
admin.site.register(Language)
admin.site.register(GroupGenre)
admin.site.register(Country)
admin.site.register(Year)
admin.site.register(Genre)
admin.site.register(Editorial)
admin.site.register(Autor)
admin.site.register(Book)
admin.site.register(EditorialBook)
admin.site.register(AutorBook)
admin.site.register(BookGenre)
admin.site.register(BookUser)
admin.site.register(Contact)
admin.site.register(Rule)
admin.site.register(Currency)
admin.site.register(CurrencyExchange)
admin.site.register(OpenTrade)
admin.site.register(ProcessTrade)
admin.site.register(Score)
admin.site.register(CloseTrade)
admin.site.register(Group)
