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

- **Parameters** : <br/> 
 Currency: ['TL','USD','EUR'], require <br/>
 NameSurname: require <br/>
 TotalPrice: require <br/>
 DiscountPrice: <br/>
 Category: require <br/>
