# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.views.generic import TemplateView

from OrbitBooks.models import *


class Index(TemplateView):
    template_name = 'OrbitBooks/index.html'

    def get_context_data(self, **kwargs):
        context = super(Index, self).get_context_data(**kwargs)
        context['book_list'] = Book.objects.all()
        context['user_list'] = User.objects.all()
        context['group_list'] = Group.objects.all()
        context['sponsor_list'] = Sponsor.objects.all()
        return context
