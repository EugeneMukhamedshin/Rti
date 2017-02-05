<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
  xmlns="urn:schemas-microsoft-com:office:spreadsheet"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:o="urn:schemas-microsoft-com:office:office"
	xmlns:x="urn:schemas-microsoft-com:office:excel"
	xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet"
	xmlns:html="http://www.w3.org/TR/REC-html40"
	xmlns:rti="urn:rti">

  <xsl:output method="xml" encoding="utf-8" indent="yes" omit-xml-declaration="no"/>

  <xsl:template match="root">

    <xsl:processing-instruction name="mso-application">
      <xsl:text>progid="Excel.Sheet"</xsl:text>
    </xsl:processing-instruction>

    <?mso-application progid="Excel.Sheet"?>
    <Workbook xmlns="urn:schemas-microsoft-com:office:spreadsheet"
     xmlns:o="urn:schemas-microsoft-com:office:office"
     xmlns:x="urn:schemas-microsoft-com:office:excel"
     xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet"
     xmlns:html="http://www.w3.org/TR/REC-html40">
      <Styles>
        <Style ss:ID="Default" ss:Name="Normal">
          <Alignment ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204"/>
          <Interior/>
          <NumberFormat/>
          <Protection/>
        </Style>
        <Style ss:ID="m134287072">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m134287092">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m134287112">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m134287192">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m134286460">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m134286480">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m134286500">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m134286520">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m134286540">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m134286560">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m134286580">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s63">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s65">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="11" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s66">
          <Alignment ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="6"/>
        </Style>
        <Style ss:ID="s67">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s69">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="6"/>
        </Style>
        <Style ss:ID="s71">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="9" ss:Bold="1"
           ss:Italic="1"/>
        </Style>
        <Style ss:ID="s73">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="9"/>
        </Style>
        <Style ss:ID="s74">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s77">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Italic="1"/>
        </Style>
        <Style ss:ID="s78">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s80">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="9" ss:Italic="1"/>
        </Style>
        <Style ss:ID="s81">
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="9" ss:Italic="1"/>
          <Interior/>
        </Style>
        <Style ss:ID="s82">
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="9" ss:Italic="1"/>
        </Style>
        <Style ss:ID="s83">
          <Alignment ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="9"/>
        </Style>
        <Style ss:ID="s85">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s87">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s88">
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s90">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s91">
          <Alignment ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Italic="1"/>
        </Style>
        <Style ss:ID="s92">
          <Alignment ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s93">
          <Alignment ss:Vertical="Top" ss:WrapText="1"/>
        </Style>
        <Style ss:ID="s101">
          <Alignment ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s102">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s111">
          <Alignment ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s112">
          <Alignment ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s113">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s114">
          <Alignment ss:Vertical="Top"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s116">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s118">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s120">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s124">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s125">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s127">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s134">
          <Alignment ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s135">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s137">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s138">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s139">
          <Alignment ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s140">
          <Alignment ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s141">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s143">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s144">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
        </Style>
      </Styles>
      <Worksheet ss:Name="Счет-фактура">
        <Table x:FullColumns="1" x:FullRows="1">
          <Column ss:AutoFitWidth="0" ss:Width="29.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="130.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="31.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="29.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="59.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="39"/>
          <Column ss:AutoFitWidth="0" ss:Width="42"/>
          <Column ss:AutoFitWidth="0" ss:Width="70.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="33" ss:Span="1"/>
          <Column ss:Index="11" ss:AutoFitWidth="0" ss:Width="36.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="61.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="33"/>
          <Column ss:AutoFitWidth="0" ss:Width="41.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="89.25"/>
          <Row ss:AutoFitHeight="0" ss:Height="18.75">
            <Cell ss:Index="12" ss:MergeAcross="3" ss:StyleID="s63">
              <Data ss:Type="String">Приложение №1 к постановлению Правительства Российской Федерации от 26 декабря 2011г. №1137 </Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="15">
            <Cell ss:MergeAcross="3" ss:StyleID="s65">
              <Data ss:Type="String">Счет-фактура №<xsl:value-of select="set[@name='Shipments']/Shipment/@SortOrder"/> от <xsl:value-of select="rti:FormatDate(set[@name='Shipments']/Shipment/@Date, 'dd.MM.yyyy')"/></Data>
            </Cell>
            <Cell ss:Index="10" ss:StyleID="s66"/>
            <Cell ss:StyleID="s66"/>
            <Cell ss:StyleID="s66"/>
            <Cell ss:StyleID="s66"/>
            <Cell ss:StyleID="s66"/>
            <Cell ss:StyleID="s67">
              <Data ss:Type="String">(1)</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:MergeAcross="3" ss:StyleID="s65">
              <Data ss:Type="String">Исправление №                 от</Data>
            </Cell>
            <Cell ss:Index="10" ss:MergeAcross="4" ss:StyleID="s69"/>
            <Cell ss:StyleID="s67">
              <Data ss:Type="String">(1а)</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:MergeAcross="1" ss:StyleID="s71">
              <Data ss:Type="String">ПРОДАВЕЦ:</Data>
            </Cell>
            <Cell ss:MergeAcross="9" ss:StyleID="s73">
              <Data ss:Type="String"><xsl:value-of select="set[@name='Shipments']/Shipment/Request/Manufacturer/@Name"/></Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s74"/>
            <Cell ss:StyleID="s67">
              <Data ss:Type="String">(2)</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:MergeAcross="1" ss:StyleID="s77">
              <Data ss:Type="String">Адрес:</Data>
            </Cell>
            <Cell ss:MergeAcross="9" ss:StyleID="s73">
              <Data ss:Type="String"><xsl:value-of select="set[@name='Shipments']/Shipment/Request/Manufacturer/@Address"/></Data>
            </Cell>
            <Cell ss:StyleID="s74"/>
            <Cell ss:StyleID="s78"/>
            <Cell ss:StyleID="s67">
              <Data ss:Type="String">(2а)</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:MergeAcross="1" ss:StyleID="s80">
              <ss:Data ss:Type="String"
      xmlns="http://www.w3.org/TR/REC-html40">
                <I>
                  ИНН/КПП <Font html:Size="8">продавца:</Font>
                </I>
              </ss:Data>
            </Cell>
            <Cell ss:MergeAcross="9" ss:StyleID="s73">
              <Data ss:Type="String"><xsl:value-of select="set[@name='Shipments']/Shipment/Request/Manufacturer/@Inn"/>  /  <xsl:value-of select="set[@name='Shipments']/Shipment/Request/Manufacturer/@Kpp"/>
            </Data>
            </Cell>
            <Cell ss:StyleID="s74"/>
            <Cell ss:StyleID="s78"/>
            <Cell ss:StyleID="s67">
              <Data ss:Type="String">(2б)</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:StyleID="s81">
              <Data ss:Type="String">ГРУЗООТПРАВИТЕЛЬ и его адрес</Data>
            </Cell>
            <Cell ss:StyleID="s82"/>
            <Cell ss:StyleID="s83">
              <Data ss:Type="String"><xsl:value-of select="set[@name='Shipments']/Shipment/Request/Manufacturer/@FullName"/></Data>
            </Cell>
            <Cell ss:StyleID="s83"/>
            <Cell ss:StyleID="s83"/>
            <Cell ss:StyleID="s83"/>
            <Cell ss:StyleID="s83"/>
            <Cell ss:StyleID="s83"/>
            <Cell ss:StyleID="s83"/>
            <Cell ss:StyleID="s83"/>
            <Cell ss:StyleID="s83"/>
            <Cell ss:StyleID="s83"/>
            <Cell ss:StyleID="s74"/>
            <Cell ss:StyleID="s78"/>
            <Cell ss:StyleID="s67">
              <Data ss:Type="String">(3)</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:StyleID="s82">
              <Data ss:Type="String">ГРУЗОПОЛУЧАТЕЛЬ и его адрес</Data>
            </Cell>
            <Cell ss:StyleID="s82"/>
            <Cell ss:MergeAcross="9" ss:StyleID="s85">
              <Data ss:Type="String"><xsl:value-of select="set[@name='Shipments']/Shipment/Recipient/@FullName"/></Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s74"/>
            <Cell ss:StyleID="s67">
              <Data ss:Type="String">(4)</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:MergeAcross="1" ss:StyleID="s77">
              <Data ss:Type="String">К платежно-расчетному документу</Data>
            </Cell>
            <Cell ss:MergeAcross="9" ss:StyleID="s85">
              <Data ss:Type="String">№<xsl:value-of select="set[@name='Shipments']/Shipment/Payment/@PaymentDocNumber"/> от <xsl:value-of select="rti:FormatDate(set[@name='Shipments']/Shipment/Payment/@PaymentDate, 'dd.MM.yyyy')"/></Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s74"/>
            <Cell ss:StyleID="s67">
              <Data ss:Type="String">(5)</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:MergeAcross="1" ss:StyleID="s71">
              <Data ss:Type="String">ПОКУПАТЕЛЬ</Data>
            </Cell>
            <Cell ss:MergeAcross="9" ss:StyleID="s87">
              <Data ss:Type="String"><xsl:value-of select="set[@name='Shipments']/Shipment/Payer/@Name"/></Data>
            </Cell>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s74"/>
            <Cell ss:StyleID="s67">
              <Data ss:Type="String">(6)</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:MergeAcross="1" ss:StyleID="s77">
              <Data ss:Type="String">Адрес:</Data>
            </Cell>
            <Cell ss:MergeAcross="9" ss:StyleID="s90">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Payer/@Address"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s74"/>
            <Cell ss:StyleID="s67">
              <Data ss:Type="String">(6а)</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:StyleID="s91">
              <Data ss:Type="String">ИНН/КПП покупателя</Data>
            </Cell>
            <Cell ss:StyleID="s91"/>
            <Cell ss:MergeAcross="9" ss:StyleID="s90">
              <Data ss:Type="String"><xsl:value-of select="set[@name='Shipments']/Shipment/Payer/@Inn"/> / <xsl:value-of select="set[@name='Shipments']/Shipment/Payer/@Kpp"/></Data>
            </Cell>
            <Cell ss:StyleID="s92"/>
            <Cell ss:StyleID="s74"/>
            <Cell ss:StyleID="s67">
              <Data ss:Type="String">(6б)</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:MergeAcross="1" ss:StyleID="s80">
              <Data ss:Type="String">Валюта: наименование, код</Data>
            </Cell>
            <Cell ss:MergeAcross="9" ss:StyleID="s73">
              <Data ss:Type="String">Российский рубль,643</Data>
            </Cell>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s74"/>
            <Cell ss:StyleID="s67">
              <Data ss:Type="String">(7)</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="0.75">
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="0.75">
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="15" ss:StyleID="s93">
            <Cell ss:MergeAcross="2" ss:MergeDown="1" ss:StyleID="m134286460">
              <Data
      ss:Type="String">Наименование товара (описание выполненных работ, оказанных услуг) , имущественного права</Data>
            </Cell>
            <Cell ss:StyleID="s101">
              <Data ss:Type="String">Единица измерения</Data>
            </Cell>
            <Cell ss:StyleID="s101"/>
            <Cell ss:MergeDown="1" ss:StyleID="m134286480">
              <ss:Data ss:Type="String"
      xmlns="http://www.w3.org/TR/REC-html40">
                <B>
                  Количе-ство  <Font html:Size="7"> (объем)</Font>
                </B>
              </ss:Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="m134286500">
              <ss:Data ss:Type="String"
      xmlns="http://www.w3.org/TR/REC-html40">
                <B>
                  Цена<Font html:Size="7">  (тариф) за единицу измерения</Font>
                </B>
              </ss:Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="m134286520">
              <ss:Data ss:Type="String" xmlns="http://www.w3.org/TR/REC-html40">
                <B>
                  Стоимость товаров                  <Font html:Size="7">( работ,услуг), имущественных прав без налога-</Font><Font> всего </Font>
                </B>
              </ss:Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="m134286540">
              <Data ss:Type="String">В том числе сумма акциза</Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="m134286560">
              <Data ss:Type="String">Налого-вая ставка</Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="m134286580">
              <ss:Data ss:Type="String" xmlns="http://www.w3.org/TR/REC-html40">
                <B>
                  Сумма налога <Font html:Size="7">предъ-являемая покупателю</Font>
                </B>
              </ss:Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="m134287072">
              <ss:Data ss:Type="String" xmlns="http://www.w3.org/TR/REC-html40">
                <B>
                  Стоимость товаров          <Font html:Size="7">( работ,услуг), имущественных прав с  налогом-</Font><Font> всего </Font>
                </B>
              </ss:Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m134287092">
              <Data ss:Type="String">Страна</Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="m134287112">
              <Data ss:Type="String">Номер таможенной деклорации</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="50.25" ss:StyleID="s93">
            <Cell ss:Index="4" ss:StyleID="s111">
              <Data ss:Type="String">Код</Data>
            </Cell>
            <Cell ss:StyleID="s112">
              <Data ss:Type="String">Условное обозначение   (национальное)</Data>
            </Cell>
            <Cell ss:Index="13" ss:StyleID="s102">
              <Data ss:Type="String">Цифровой код</Data>
            </Cell>
            <Cell ss:StyleID="s113">
              <Data ss:Type="String">Краткое наимено-вание</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.75" ss:StyleID="s114">
            <Cell ss:MergeAcross="2" ss:StyleID="s116">
              <Data ss:Type="Number">1</Data>
            </Cell>
            <Cell ss:StyleID="s118">
              <Data ss:Type="Number">2</Data>
            </Cell>
            <Cell ss:StyleID="s118">
              <Data ss:Type="String">2а</Data>
            </Cell>
            <Cell ss:StyleID="s118">
              <Data ss:Type="Number">3</Data>
            </Cell>
            <Cell ss:StyleID="s118">
              <Data ss:Type="Number">4</Data>
            </Cell>
            <Cell ss:StyleID="s118">
              <Data ss:Type="Number">5</Data>
            </Cell>
            <Cell ss:StyleID="s118">
              <Data ss:Type="Number">6</Data>
            </Cell>
            <Cell ss:StyleID="s118">
              <Data ss:Type="Number">7</Data>
            </Cell>
            <Cell ss:StyleID="s118">
              <Data ss:Type="Number">8</Data>
            </Cell>
            <Cell ss:StyleID="s118">
              <Data ss:Type="Number">9</Data>
            </Cell>
            <Cell ss:StyleID="s118">
              <Data ss:Type="Number">10</Data>
            </Cell>
            <Cell ss:StyleID="s118">
              <Data ss:Type="String">10а</Data>
            </Cell>
            <Cell ss:StyleID="s118">
              <Data ss:Type="Number">11</Data>
            </Cell>
          </Row>

          <xsl:apply-templates select="set[@name='ShipmentItems']/ShipmentItem" />

          <Row>
            <Cell ss:MergeAcross="2" ss:StyleID="s127">
              <Data ss:Type="String">Всего к оплате</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m134287192"/>
            <Cell ss:StyleID="s134"/>
            <Cell ss:StyleID="s134" ss:Formula="=SUM(R[-{count(set[@name='ShipmentItems']/ShipmentItem)}]C:R[-1]C)">
              <Data ss:Type="Number">2492</Data>
            </Cell>
            <Cell ss:StyleID="s134"/>
            <Cell ss:StyleID="s135"/>
            <Cell ss:StyleID="s124" ss:Formula="=SUM(R[-{count(set[@name='ShipmentItems']/ShipmentItem)}]C:R[-1]C)">
              <Data ss:Type="Number">448.56</Data>
            </Cell>
            <Cell ss:StyleID="s135" ss:Formula="=SUM(R[-{count(set[@name='ShipmentItems']/ShipmentItem)}]C:R[-1]C)">
              <Data ss:Type="Number">2940.56</Data>
            </Cell>
            <Cell ss:StyleID="s124"/>
            <Cell ss:StyleID="s135"/>
            <Cell ss:StyleID="s135"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="26.25">
            <Cell ss:MergeAcross="2" ss:StyleID="s137">
              <Data ss:Type="String">Руководитель организации                  или иное уполномоченное лицо</Data>
            </Cell>
            <Cell ss:StyleID="s138"/>
            <Cell ss:StyleID="s138"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s137">
              <Data ss:Type="String">Холодников Ю.В.</Data>
            </Cell>
            <Cell ss:MergeAcross="3" ss:StyleID="s137">
              <Data ss:Type="String">Главный бухгалтер                        или иное уполномоченное лицо</Data>
            </Cell>
            <Cell ss:StyleID="s138"/>
            <Cell ss:StyleID="s139"/>
            <Cell ss:StyleID="s140">
              <Data ss:Type="String">Холодникова В.П.</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="18.75">
            <Cell ss:MergeAcross="2" ss:StyleID="s87">
              <Data ss:Type="String">Индивидуальный предприниматель</Data>
            </Cell>
            <Cell ss:Index="6" ss:StyleID="s141"/>
            <Cell ss:StyleID="s141"/>
            <Cell ss:Index="9" ss:StyleID="s141"/>
            <Cell ss:StyleID="s141"/>
            <Cell ss:StyleID="s141"/>
            <Cell ss:StyleID="s141"/>
            <Cell ss:StyleID="s141"/>
            <Cell ss:StyleID="s141"/>
            <Cell ss:StyleID="s141"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="8.25">
            <Cell ss:Index="6" ss:MergeAcross="1" ss:StyleID="s143">
              <Data ss:Type="String">ф.и.о.</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s92">
              <Data ss:Type="String">Примечание.Первый экземпляр-покупателю, второй экхземпляр- продавцу.</Data>
            </Cell>
            <Cell ss:StyleID="s92"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:StyleID="s88"/>
          </Row>
          <Row/>
          <Row>
            <Cell ss:Index="20" ss:StyleID="s144"/>
          </Row>
        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Layout x:Orientation="Landscape"/>
            <Header x:Margin="0.3"/>
            <Footer x:Margin="0.3"/>
            <PageMargins x:Bottom="0.75" x:Left="0.25" x:Right="0.25" x:Top="0.75"/>
          </PageSetup>
          <Print>
            <ValidPrinterInfo/>
            <PaperSizeIndex>9</PaperSizeIndex>
            <HorizontalResolution>600</HorizontalResolution>
            <VerticalResolution>600</VerticalResolution>
          </Print>
          <PageBreakZoom>60</PageBreakZoom>
          <Selected/>
          <Panes>
            <Pane>
              <Number>3</Number>
              <ActiveRow>27</ActiveRow>
              <ActiveCol>4</ActiveCol>
            </Pane>
          </Panes>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
      </Worksheet>
    </Workbook>
  </xsl:template>

  <xsl:template match="set[@name='ShipmentItems']/ShipmentItem">
    <xsl:call-template name = "ShipmentItemRow"/>
  </xsl:template>

  <xsl:template name="ShipmentItemRow">
    <Row>
      <Cell ss:MergeAcross="2" ss:StyleID="s120">
        <Data ss:Type="String"><xsl:value-of select="@FullDetailName"/></Data>
      </Cell>
      <Cell ss:StyleID="s124">
        <Data ss:Type="Number"><xsl:value-of select="RequestDetail/Drawing/MeasureUnit/@Code"/></Data>
      </Cell>
      <Cell ss:StyleID="s124">
        <Data ss:Type="String"><xsl:value-of select="RequestDetail/Drawing/MeasureUnit/@Name"/></Data>
      </Cell>
      <Cell ss:StyleID="s125">
        <Data ss:Type="Number"><xsl:value-of select="@Count"/></Data>
      </Cell>
      <Cell ss:StyleID="s125">
        <Data ss:Type="Number">
          <xsl:value-of select="@RealPrice"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s125">
        <Data ss:Type="Number">
          <xsl:value-of select="@Sum"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s124">
        <Data ss:Type="String">-</Data>
      </Cell>
      <Cell ss:StyleID="s124">
        <Data ss:Type="Number">
          <xsl:value-of select="@NdsPercent div 100"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s124">
        <Data ss:Type="Number">
          <xsl:value-of select="@NdsSum"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s125">
        <Data ss:Type="Number">
          <xsl:value-of select="@SumWithNds"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s124">
        <Data ss:Type="String">-</Data>
      </Cell>
      <Cell ss:StyleID="s124">
        <Data ss:Type="String">-</Data>
      </Cell>
      <Cell ss:StyleID="s124">
        <Data ss:Type="String">-</Data>
      </Cell>
    </Row>
  </xsl:template>

</xsl:stylesheet>
