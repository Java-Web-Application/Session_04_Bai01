package com.restaurant.controller;
import com.restaurant.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller("legacyControllerBai1")
public class LegacyController {
    private OrderService orderService;

    @Autowired
    public LegacyController(OrderService orderService){
        this.orderService = orderService;
    }

    @RequestMapping(value = "/restaurant", method = RequestMethod.GET)
    public String showOrdersPage(Model model) {
        String data = orderService.getAllOrders();
        model.addAttribute("message", data);
        return "index";
    }

    @RequestMapping(value = "/restaurant/orders", method = RequestMethod.GET)
    @ResponseBody
    public String getAllOrders() {
        return orderService.getAllOrders();
    }

    @RequestMapping(value = "/restaurant/orders/{id}", method = RequestMethod.GET)
    @ResponseBody
    public String getOrderById(@PathVariable Long id) {
        return orderService.getOrderById(id);
    }
}