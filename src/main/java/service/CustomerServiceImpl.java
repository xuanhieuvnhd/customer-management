package service;

import model.Customer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerServiceImpl implements CustomerService {
    private static Map<Integer, Customer> customers;

    static {
        customers = new HashMap<>();
        customers.put(1, new Customer(1, "Hoàng Hiểu", "xuanhieuvn@gmail.com", "Hải Dương"));
        customers.put(2, new Customer(2, "Trường Giang", "truonggiang91@gmail.com", "Hà Nội"));
        customers.put(3, new Customer(3, "Duy Dương", "duongtramcam@hotmail.com", "Thanh Hoá"));
        customers.put(4, new Customer(4, "Hải Yến", "haiyen2k3@codegym.vn", "Hà Nam"));
        customers.put(5, new Customer(5, "Bá Thương", "chubathong@codegym.vn", "Quảng Nam"));
        customers.put(6, new Customer(6, "Hải Đăng", "kutonhuphich@codegym.vn", "Hải Phòng"));
    }

    @Override
    public List<Customer> findAll() {
        return new ArrayList<>(customers.values());
    }

    @Override
    public void save(Customer customer) {
        customers.put(customer.getId(), customer);
    }

    @Override
    public Customer findById(int id) {
        return customers.get(id);
    }

    @Override
    public void update(int id, Customer customer) {
        customers.put(id, customer);
    }

    @Override
    public void remove(int id) {
        customers.remove(id);
    }
}
