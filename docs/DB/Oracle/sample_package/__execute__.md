```
DECLARE
  out_list1      SYS_REFCURSOR;
  our_return_cd  NUMBER := 0;
BEGIN
  MY_PACKAGE_01.MY_PROCEDURE_01;
  MY_PACKAGE_01.MY_PROCEDURE_02(1, '2');
  MY_PACKAGE_01.MY_PROCEDURE_03(1, '2', out_list1, our_return_cd );
--rollback; 
END;

```