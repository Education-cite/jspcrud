package com.example.jspcrud.serviceImpl;

import com.example.jspcrud.model.Department;
import com.example.jspcrud.repository.DepartmentRepository;
import com.example.jspcrud.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DepartmentServiceImpl implements DepartmentService {
    @Autowired
    public  DepartmentRepository departmentRepository;

    @Override
    public List<Department> Get_all_department() {
        return departmentRepository.findAll();
    }

    @Override
    public Department Get_department_by_id(Long id) {
        return departmentRepository.findById(id).get();
    }

    @Override
    public Department Create_new_department(Department department) {
        return departmentRepository.save(department);
    }

    @Override
    public Department Update_department(Department department) {
        return departmentRepository.save(department);
    }

    @Override
    public String Delete_department(Long id) {
        departmentRepository.deleteById(id);
        return "Department deleted successfully!";
    }
}
