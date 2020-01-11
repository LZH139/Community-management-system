package dao.dai;

import dto.Maintenance;

import java.util.List;

public interface MaintenanceDao {

    List<Maintenance> getMaintenanceList(String uid);

}
