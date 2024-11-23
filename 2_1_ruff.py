import boto3
import os

def show_doc():
    #本書ようになんらかの形でライブラリを使用する
    print(boto3.__doc__)
    print(os.__doc__)
