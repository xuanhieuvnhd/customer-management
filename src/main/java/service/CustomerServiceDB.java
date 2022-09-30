package service;

import model.Customer;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerServiceDB  implements CustomerService{
    Connection getConnect(){
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/demojdbc?useSSL=false",
                    "root",
                    "761321"
            );
            System.out.println("ket noi thanh cong");
        } catch (ClassNotFoundException e) {

            System.out.println("kn khong thanh cong");
            throw new RuntimeException(e);
        } catch (SQLException e) {

            System.out.println("kn khong thanh cong");
            throw new RuntimeException(e);
        }

        return connection;
    }


    @Override
    public List<Customer> findAll() {
        List<Customer> customers = new ArrayList<>();
        Connection connection = getConnect();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("select * from customer;");

            System.out.println(preparedStatement);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                // lay du lieu ra
                int id = resultSet.getInt(1);
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String address = resultSet.getString("address");
                // tao moi doi tuong Customer
                Customer customer = new Customer(id, name, email, address);
                // add vao list
                customers.add(customer);
                System.out.println(customers);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return customers;
    }

    @Override
    public void save(Customer customer) {
        Connection c = getConnect();
        try {
            PreparedStatement preparedStatement = c.prepareStatement("INSERT INTO demojdbc.customer (name, email, address) VALUES (?, ?, ?)");
            preparedStatement.setString(1, customer.getName());
            preparedStatement.setString(2, customer.getEmail());
            preparedStatement.setString(3, customer.getAddress());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public Customer findById(int id) {
        Connection connection = getConnect();
        Customer customer= null;
        try {
            String sql = "Select * from customer where id=?";
            PreparedStatement ps= connection.prepareStatement(sql);
            ps.setInt(1,id);
            ResultSet resultSet= ps.executeQuery();
            while(resultSet.next()){
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String address = resultSet.getString("address");
                customer =new Customer(id,name,email,address);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customer;
    }

    @Override
    public void update(int id, Customer customer) {

    }

    @Override
    public void remove(int id) {

    }

    public static void main(String[] args) {
        CustomerServiceDB customerServiceDB = new CustomerServiceDB();
        customerServiceDB.save(new Customer("Hieu", "afjahsf", "HD"));
    }
}
