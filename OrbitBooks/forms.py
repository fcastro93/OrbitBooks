from django.forms import *


class BookForm(forms.Form):
    name = CharField(max_length=500, label='Book name:')
    year = IntegerField
    cover = ImageField()


