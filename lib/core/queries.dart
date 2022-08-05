import '../model/product.dart';

class Queries {

  static String getOrderByUserId(int userId){
    return """
    {
      order(where: {user_id: {_eq: $userId}}) {
        id
        user_id
        order_date
        order_status
        count
        total_price
        order_items {
          id
          order_id
          product {
            id
            price
            name
            description
            image
            weight
          }
          quantity
        }
      }
    }
    """;
  }

  static String getAllProducts() {
    return """
    {
      product{
        id
        price
        name
        description
        image
        weight
      }
    }
    """;
  }

  static String getProductByIds(List<int> ids) {
    return """
    {
      product(where: {id: {_in: [${ids.join(',')}]}}) {
        id
        price
        name
        description
        image
        weight
      }
    }
    """;
  }

  static String getProductByCategoryId(int categoryId) {
    return """
      {
        product(where: {category_id: {_eq: $categoryId}}){
          weight
          price
          name
          image
          id
          description
        }
      }
    """ ;
  }

  static String getAllCategories() {
    return """
    {
      category{
        id
        name
        image
      }
    }
    """;
  }

  static String getProductById(int id){
    return """
    {
      product_by_pk(id: $id) {
        description
        id
        image
        name
        price
        weight
      }
    }
    """;
  }

  static String addProducts(List<Product> products) {
    List<String> str = products.map((e) {
      return """
      {
        price: ${e.price},
        name: "${e.name}",
        description: "${e.description}",
        image: "${e.image}",
        weight: "${e.weight}",
      },
      """;
    }).toList();

    String readRepositories = """
      mutation {
        insert_product(objects: [
          ${str.join("\n")}
        ]){
          returning {
            name
          }
        }
      }
    """;

    return readRepositories;
  }
}
