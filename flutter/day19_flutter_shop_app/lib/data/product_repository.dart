import '../models/product.dart';

class ProductRepository {
  List<Product> getProducts() {
    return [
      Product(
        id: '1',
        name: 'Awesome Jacket',
        image:
            'https://images.unsplash.com/photo-1487222477894-8943e31ef7b2?q=80&w=1395&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        price: 19.99,
        description: 'Awesome Jacket',
        colors: ['Brown', 'Blue', 'Green'],
        sizes: ['S', 'M', 'L'],
      ),
      Product(
        id: '2',
        name: 'Smart Gadget',
        image:
            'https://images.unsplash.com/photo-1558089687-f282ffcbc126?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        price: 29.99,
        description: 'The latest smart gadget with cutting-edge features.',
        colors: ['Black', 'White', 'Silver'],
        sizes: ['M', 'L', 'XL'],
      ),
      Product(
        id: '3',
        name: 'Elegant Chair',
        image:
            'https://images.unsplash.com/photo-1567538096630-e0c55bd6374c?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        price: 49.99,
        description: 'An elegant and comfortable chair for your home.',
        colors: ['Brown', 'Gray', 'Beige'],
        sizes: ['One Size'],
      ),
      Product(
        id: '4',
        name: 'Stylish Watch',
        image:
            'https://images.unsplash.com/photo-1549482199-bc1ca6f58502?q=80&w=1528&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        price: 79.99,
        description: 'A stylish and functional watch for any occasion.',
        colors: ['Gold', 'Silver', 'Rose Gold'],
        sizes: ['One Size'],
      ),
      Product(
        id: '5',
        name: 'Headphones',
        image:
            'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        price: 99.99,
        description: 'High-quality headphones for the best audio experience.',
        colors: ['Black', 'Blue', 'Red'],
        sizes: ['One Size'],
      ),
      Product(
        id: '6',
        name: 'Tech Backpack',
        image:
            'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        price: 59.99,
        description: 'A classic and durable backpack for your daily needs.',
        colors: ['Navy', 'Gray', 'Green'],
        sizes: ['Medium', 'Large'],
      ),
    ];
  }
}
