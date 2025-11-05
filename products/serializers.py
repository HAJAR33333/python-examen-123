from rest_framework import serializers
from .models import Product

class ProductSerializer(serializers.ModelSerializer):
    class Meta:
        model = Product
        fields = "__all__"
        read_only_fields = ("created_at",)

    def validate_price(self, value):
        if value <= 0:
            raise serializers.ValidationError("Le prix doit être > 0")
        return value
