/**
 * @File Name          : AuraLeadSearch.cls
 * @Description        : 
 * @Author             : shubhranshu
 * @Group              : 
 * @Last Modified By   : shubhranshu
 * @Last Modified On   : 3/9/2019, 12:09:04 AM
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    3/9/2019   shubhranshu     Initial Version
**/
public with sharing class AuraLeadSearch {
    public AuraLeadSearch() {

    }

    @AuraEnabled
    public static List<SObject> getLeads(String name){

        String keySearch = '%'+name+'%';
        String leadQuery = 'select Id,FirstName,LastName, MobilePhone, Email from Lead where FirstName Like :keySearch';

        return Database.query(leadQuery);
    }
}
