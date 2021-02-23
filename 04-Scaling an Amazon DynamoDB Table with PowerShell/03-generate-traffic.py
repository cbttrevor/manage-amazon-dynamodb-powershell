import boto3
from faker import Faker
from boto3.session import Session
from random import randint

fake = Faker()

sess = Session(profile_name='cbt')
dynamodb = sess.resource('dynamodb')

table = dynamodb.Table('trevor')

filler = "x" * 100000

i = 0
while (i < 1000):
    j = 0
    while (j < 10):
        print (i, j)
        Item = {
            'author': fake.name(),
            'age': randint(20, 70),
            'quote':{"S":filler}
        }
        table.put_item(Item=Item)
        j += 1
    i += 1
            