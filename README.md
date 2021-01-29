# order-app-ruby

## API Guides

```shell
  [POST] /order/create  
  [GET]  /order/view
  [GET]  /order/view/{id}
  [POST] /category/create
  [GET]  /category/view
```

#### order/create

- **Parameters** : 
> Currency: ['TL','USD','EUR'], require
> NameSurname: require
> TotalPrice: require
> DiscountPrice:
> Category: require
