<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="../receivePO.wsdl"/>
      <rootElement name="PurchaseOrder" namespace="http://xmlns.oracle.com/ns/order"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../approveLargeOrder.wsdl"/>
      <rootElement name="Order" namespace="http://xmlns.oracle.com/ns/order"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.7.0(build 140919.1004.0161) AT [THU MAR 05 22:59:05 IST 2015]. -->
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
                xmlns:inp1="http://xmlns.oracle.com/ns/order"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:client="http://xmlns.oracle.com/POProcessing/POProcessing/approveLargeOrder"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl tns inp1 xsd wsdl plnk client xp20 bpws mhdr bpel oraext dvm hwf med ids bpm xdk xref ora socket ldap">
  <xsl:template match="/">
    <inp1:Order>
      <inp1:customerId>
        <xsl:value-of select="/inp1:PurchaseOrder/inp1:CustID"/>
      </inp1:customerId>
      <inp1:orderId>
        <xsl:value-of select="/inp1:PurchaseOrder/inp1:ID"/>
      </inp1:orderId>
      <inp1:prodName>
        <xsl:value-of select="/inp1:PurchaseOrder/inp1:productName"/>
      </inp1:prodName>
      <inp1:itemType>
        <xsl:value-of select="/inp1:PurchaseOrder/inp1:itemType"/>
      </inp1:itemType>
      <inp1:price>
        <xsl:value-of select="/inp1:PurchaseOrder/inp1:price"/>
      </inp1:price>
      <inp1:qty>
        <xsl:value-of select="/inp1:PurchaseOrder/inp1:quantity"/>
      </inp1:qty>
      <inp1:status>
        <xsl:value-of select="/inp1:PurchaseOrder/inp1:status"/>
      </inp1:status>
      <inp1:creditCardInfo>
        <inp1:cardNumber>
          <xsl:value-of select="/inp1:PurchaseOrder/inp1:ccNumber"/>
        </inp1:cardNumber>
        <inp1:cardType>
          <xsl:value-of select="/inp1:PurchaseOrder/inp1:ccType"/>
        </inp1:cardType>
      </inp1:creditCardInfo>
    </inp1:Order>
  </xsl:template>
</xsl:stylesheet>