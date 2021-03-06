<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="../xsd/po.xsd"/>
      <rootElement name="PurchaseOrder" namespace="http://xmlns.oracle.com/ns/order"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../receivePO.wsdl"/>
      <rootElement name="PurchaseOrder" namespace="http://xmlns.oracle.com/ns/order"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.7.0(build 140919.1004.0161) AT [TUE MAR 10 22:07:18 IST 2015]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:tns="http://oracle.com/sca/soapservice/POProcessing/POProcessing/receivePO"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:po="http://xmlns.oracle.com/ns/order"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl po xsd tns wsdl xp20 bpws mhdr bpel oraext dvm hwf med ids bpm xdk xref ora socket ldap">
  <xsl:template match="/">
    <po:PurchaseOrder>
      <po:CustID>
        <xsl:value-of select="/po:PurchaseOrder/po:CustID"/>
      </po:CustID>
      <po:ID>
        <xsl:value-of select="/po:PurchaseOrder/po:ID"/>
      </po:ID>
      <po:productName>
        <xsl:value-of select="/po:PurchaseOrder/po:productName"/>
      </po:productName>
      <po:itemType>
        <xsl:value-of select="/po:PurchaseOrder/po:itemType"/>
      </po:itemType>
      <po:price>
        <xsl:value-of select="/po:PurchaseOrder/po:price"/>
      </po:price>
      <po:quantity>
        <xsl:value-of select="/po:PurchaseOrder/po:quantity"/>
      </po:quantity>
      <po:status>
        <xsl:value-of select="/po:PurchaseOrder/po:status"/>
      </po:status>
      <po:ccType>
        <xsl:value-of select="/po:PurchaseOrder/po:ccType"/>
      </po:ccType>
      <po:ccNumber>
        <xsl:value-of select="/po:PurchaseOrder/po:ccNumber"/>
      </po:ccNumber>
    </po:PurchaseOrder>
  </xsl:template>
</xsl:stylesheet>
