@isTest
private class TestVerifyDate {
    
    static Date date1 = Date.newInstance(2018, 01, 01);
    static Date date2 = Date.newInstance(2018, 01, 20);
    static Date date3 = Date.newInstance(2018, 04, 01);

    @isTest static void testDateWithin30() {
        Date within = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(date2, within);
    }
    
    @isTest static void testDateOutside30() {
        Date outside = VerifyDate.CheckDates(date1, date3);
        System.assertEquals(Date.newInstance(2018, 01, 31), outside);
    }

    @isTest static void testInvalidDateRange() {
        Date invalid = VerifyDate.CheckDates(date3, date1);
        System.assertEquals(Date.newInstance(2018, 04, 30), invalid);
    }
}