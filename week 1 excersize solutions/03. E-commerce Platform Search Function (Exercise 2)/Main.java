public class Main {

    public static void main(String[] args) {

        Product[] products = {
                new Product(101, "Laptop", "Electronics"),
                new Product(102, "Mobile", "Electronics"),
                new Product(103, "Shoes", "Fashion"),
                new Product(104, "Watch", "Accessories"),
                new Product(105, "Book", "Education")
        };

        int searchId = 104;

        // Linear Search
        Product result1 = SearchFunctions.linearSearch(products, searchId);

        if (result1 != null) {
            System.out.println("Product found using Linear Search:");
            result1.display();
        } else {
            System.out.println("Product not found.");
        }


        // Binary Search
        Product result2 = SearchFunctions.binarySearch(products, searchId);

        if (result2 != null) {
            System.out.println("\nProduct found using Binary Search:");
            result2.display();
        } else {
            System.out.println("Product not found.");
        }

    }
}