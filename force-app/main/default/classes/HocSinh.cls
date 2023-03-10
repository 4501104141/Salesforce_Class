public with sharing class HocSinh {
    public List<HocSinh__c> HocSinh {get;set;}
    public HocSinh() {
        HocSinh = [SELECT MaHocSinh__c, HoHocSinh__c, Name, Lop__c, Toan__c, Ly__c, Hoa__c, DiemTB__c, TinhTrang__c FROM HocSinh__c ORDER BY MaHocSinh__c];
    }
    public List<HocSinh__c> SapXepTangDan() {
        HocSinh = [SELECT MaHocSinh__c, HoHocSinh__c, Name, Lop__c, Toan__c, Ly__c, Hoa__c, DiemTB__c, TinhTrang__c 
        FROM HocSinh__c ORDER BY MaHocSinh__c];
        return HocSinh;
    }
}