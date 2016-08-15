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
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000"/>
          <Interior/>
          <NumberFormat/>
          <Protection/>
        </Style>
        <Style ss:ID="s16">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s17">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top"/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="14"
           ss:Bold="1"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s18">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial" x:CharSet="1" x:Family="Swiss" ss:Size="14"
           ss:Bold="1"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s19">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top"/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s20">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s21">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="6"/>
          <NumberFormat ss:Format="0"/>
        </Style>
        <Style ss:ID="s22">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="6"/>
          <NumberFormat ss:Format="0"/>
        </Style>
        <Style ss:ID="s23">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="6"/>
          <NumberFormat ss:Format="0&quot;а&quot;"/>
        </Style>
        <Style ss:ID="s24">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s25">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s26">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="8"
           ss:Bold="1"/>
        </Style>
        <Style ss:ID="s27">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="8"
           ss:Bold="1"/>
        </Style>
        <Style ss:ID="s28">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s29">
          <Alignment ss:Horizontal="CenterAcrossSelection" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s30">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s31">
          <Alignment ss:Horizontal="CenterAcrossSelection" ss:Vertical="Top"/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="6"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s32">
          <Alignment ss:Horizontal="CenterAcrossSelection" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s52">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="6"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s53">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s54">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s55">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s60">
          <Alignment ss:Horizontal="Right" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s62">
          <Alignment ss:Horizontal="Right" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat ss:Format="Standard"/>
        </Style>
        <Style ss:ID="s63">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s64">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="8"
           ss:Bold="1"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s65">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat ss:Format="Standard"/>
        </Style>
        <Style ss:ID="s66">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="6"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s67">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="6"/>
          <NumberFormat/>
        </Style>
      </Styles>
      <Worksheet ss:Name="Лист1">
<<<<<<< HEAD
        <Names>
          <NamedRange ss:Name="Print_Area" ss:RefersTo="=Лист1!R1C1:R{25+count(set[@name='ShipmentItems']/ShipmentItem)}C27"/>
        </Names>
=======
>>>>>>> origin/develop
        <Table x:FullColumns="1" x:FullRows="1" ss:DefaultRowHeight="15">
          <Column ss:AutoFitWidth="0" ss:Width="5.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="129"/>
          <Column ss:AutoFitWidth="0" ss:Width="6.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="11.25" ss:Span="1"/>
          <Column ss:Index="6" ss:AutoFitWidth="0" ss:Width="20.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="6"/>
          <Column ss:AutoFitWidth="0" ss:Width="39.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="9.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="26.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="30.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="20.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="15.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="45.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="10.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="22.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="9.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="48.75"/>
          <Column ss:Hidden="1" ss:AutoFitWidth="0"/>
          <Column ss:AutoFitWidth="0" ss:Width="9.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="42.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="11.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="55.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="20.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="44.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="39"/>
          <Column ss:AutoFitWidth="0" ss:Width="51.75"/>
          <Row>
            <Cell ss:MergeAcross="26" ss:StyleID="s52">
              <Data ss:Type="String">Приложение № 1&#10;к постановлению Правительства Российской Федерации&#10;от 26 декабря 2011 г. № 1137</Data>
<<<<<<< HEAD
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row ss:Height="18">
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s17">
              <Data ss:Type="String">
                <xsl:value-of select="concat(concat(concat('Счет-фактура № ', set[@name='Shipments']/Shipment/Payment/@InvoiceFacture),' от '), rti:FormatDate(set[@name='Shipments']/Shipment/@Date, 'dd.MM.yyyy'))"/>
              </Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row ss:Height="18">
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s18">
              <Data ss:Type="String"></Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
=======
            </Cell>
          </Row>
          <Row ss:Height="18">
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s17">
              <Data ss:Type="String">
                <xsl:value-of select="concat(concat(concat('Счет фактура № ', set[@name='Shipments']/Shipment/Payment/@InvoiceFacture),' от '), rti:FormatDate(set[@name='Shipments']/Shipment/@Date, 'dd.MM.yyyy'))"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
          </Row>
          <Row ss:Height="18">
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s18">
              <Data ss:Type="String"></Data>
            </Cell>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s16"/>
>>>>>>> origin/develop
            <Cell ss:MergeAcross="25" ss:StyleID="s30">
              <Data ss:Type="String">
                <xsl:value-of select="concat('Продавец: ', set[@name='Shipments']/Shipment/Request/Manufacturer/@Name)"/>
              </Data>
<<<<<<< HEAD
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
=======
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s16"/>
>>>>>>> origin/develop
            <Cell ss:MergeAcross="25" ss:StyleID="s30">
              <Data ss:Type="String">
                <xsl:value-of select="concat('Адрес: ', set[@name='Shipments']/Shipment/Request/Manufacturer/@Address)"/>
              </Data>
<<<<<<< HEAD
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
=======
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s16"/>
>>>>>>> origin/develop
            <Cell ss:MergeAcross="25" ss:StyleID="s30">
              <Data ss:Type="String">
                <xsl:value-of select="concat('ИНН/КПП продавца: ', concat(set[@name='Shipments']/Shipment/Request/Manufacturer/@Inn, concat('/', set[@name='Shipments']/Shipment/Request/Manufacturer/@Kpp)))"/>
              </Data>
<<<<<<< HEAD
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
=======
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s16"/>
>>>>>>> origin/develop
            <Cell ss:MergeAcross="25" ss:StyleID="s30">
              <Data ss:Type="String">
                <xsl:value-of select="concat('Грузоотправитель и его адрес: ', set[@name='Shipments']/Shipment/Request/Manufacturer/@FullName)"/>
              </Data>
<<<<<<< HEAD
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
=======
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s16"/>
>>>>>>> origin/develop
            <Cell ss:MergeAcross="25" ss:StyleID="s30">
              <Data ss:Type="String">
                <xsl:value-of select="concat('Грузополучатель и его адрес: ', set[@name='Shipments']/Shipment/Recipient/@FullName)"/>
              </Data>
<<<<<<< HEAD
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
=======
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s16"/>
>>>>>>> origin/develop
            <Cell ss:MergeAcross="25" ss:StyleID="s30">
              <Data ss:Type="String">
                К платежно-расчетному документу №<xsl:value-of select="set[@name='Shipments']/Shipment/Payment/@PaymentDocNumber"/> от <xsl:value-of select="rti:FormatDate(set[@name='Shipments']/Shipment/Payment/@PaymentDate, 'dd.MM.yyyy')"/>
              </Data>
<<<<<<< HEAD
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
=======
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s16"/>
>>>>>>> origin/develop
            <Cell ss:MergeAcross="25" ss:StyleID="s30">
              <Data ss:Type="String">
                Покупатель: <xsl:value-of select="set[@name='Shipments']/Shipment/Payer/@Name"/>
              </Data>
<<<<<<< HEAD
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
=======
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s16"/>
>>>>>>> origin/develop
            <Cell ss:MergeAcross="25" ss:StyleID="s30">
              <Data ss:Type="String">
                Адрес: <xsl:value-of select="set[@name='Shipments']/Shipment/Payer/@Address"/>
              </Data>
<<<<<<< HEAD
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>111
          <Row>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
=======
            </Cell>
          </Row>111
          <Row>
            <Cell ss:StyleID="s16"/>
>>>>>>> origin/develop
            <Cell ss:MergeAcross="25" ss:StyleID="s30">
              <Data ss:Type="String">
                ИНН/КПП покупателя: <xsl:value-of select="set[@name='Shipments']/Shipment/Payer/@Inn"/> / <xsl:value-of select="set[@name='Shipments']/Shipment/Payer/@Kpp"/>
              </Data>
<<<<<<< HEAD
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">Валюта: наименование, код Российский рубль, 643</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="1" ss:MergeDown="1" ss:StyleID="s54">
              <Data
      ss:Type="String">Наименование товара (описание выполненных работ, оказанных услуг), имущественного права</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="s54">
              <Data ss:Type="String">Единица&#10;измерения</Data>
              <NamedCell ss:Name="Print_Area"/>
=======
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">Валюта: наименование, код Российский рубль, 643</Data>
            </Cell>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s16"/>
            <Cell ss:MergeAcross="1" ss:MergeDown="1" ss:StyleID="s54">
              <Data
      ss:Type="String">Наименование товара (описание выполненных работ, оказанных услуг), имущественного права</Data>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="s54">
              <Data ss:Type="String">Единица&#10;измерения</Data>
>>>>>>> origin/develop
            </Cell>
            <Cell ss:MergeAcross="1" ss:MergeDown="1" ss:StyleID="s54">
              <Data
      ss:Type="String">Коли-&#10;чество &#10;(объем)</Data>
<<<<<<< HEAD
              <NamedCell ss:Name="Print_Area"/>
=======
>>>>>>> origin/develop
            </Cell>
            <Cell ss:MergeAcross="1" ss:MergeDown="1" ss:StyleID="s54">
              <Data
      ss:Type="String">Цена (тариф) за единицу измерения</Data>
<<<<<<< HEAD
              <NamedCell ss:Name="Print_Area"/>
=======
>>>>>>> origin/develop
            </Cell>
            <Cell ss:MergeAcross="2" ss:MergeDown="1" ss:StyleID="s54">
              <Data
      ss:Type="String">Стоимость товаров (работ, услуг), имущественных прав без налога - всего</Data>
<<<<<<< HEAD
              <NamedCell ss:Name="Print_Area"/>
=======
>>>>>>> origin/develop
            </Cell>
            <Cell ss:MergeAcross="1" ss:MergeDown="1" ss:StyleID="s54">
              <Data
      ss:Type="String">В том&#10;числе&#10;сумма &#10;акциза</Data>
<<<<<<< HEAD
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="s55">
              <Data ss:Type="String">Налоговая ставка</Data>
              <NamedCell ss:Name="Print_Area"/>
=======
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="s55">
              <Data ss:Type="String">Налоговая ставка</Data>
>>>>>>> origin/develop
            </Cell>
            <Cell ss:MergeAcross="3" ss:MergeDown="1" ss:StyleID="s54">
              <Data
      ss:Type="String">Сумма налога, предъявляемая покупателю</Data>
<<<<<<< HEAD
              <NamedCell ss:Name="Print_Area"/>
=======
>>>>>>> origin/develop
            </Cell>
            <Cell ss:MergeAcross="1" ss:MergeDown="1" ss:StyleID="s55">
              <Data
      ss:Type="String">Стоимость товаров (работ, услуг), имущественных прав с налогом - всего</Data>
<<<<<<< HEAD
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s55">
              <Data ss:Type="String">Страна&#10;происхождения товара</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="s55">
              <Data ss:Type="String">Номер&#10;таможенной&#10;декларации</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row ss:Height="33.75">
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:Index="4" ss:MergeAcross="1" ss:StyleID="s53">
              <Data ss:Type="String">код</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="s54">
              <Data ss:Type="String">условное обозначение (национальное)</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:Index="25" ss:StyleID="s20">
              <Data ss:Type="String">цифровой код</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s20">
              <Data ss:Type="String">краткое наимено-вание</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s22">
              <Data ss:Type="Number">1</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s22">
              <Data ss:Type="Number">2</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="s23">
              <Data ss:Type="Number">2</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s22">
              <Data ss:Type="Number">3</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s22">
              <Data ss:Type="Number">4</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="s22">
              <Data ss:Type="Number">5</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s22">
              <Data ss:Type="Number">6</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s21">
              <Data ss:Type="Number">7</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="3" ss:StyleID="s22">
              <Data ss:Type="Number">8</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s21">
              <Data ss:Type="Number">9</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s22">
              <Data ss:Type="Number">10</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s23">
              <Data ss:Type="Number">10</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s21">
              <Data ss:Type="Number">11</Data>
              <NamedCell ss:Name="Print_Area"/>
=======
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s55">
              <Data ss:Type="String">Страна&#10;происхождения товара</Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="s55">
              <Data ss:Type="String">Номер&#10;таможенной&#10;декларации</Data>
            </Cell>
          </Row>
          <Row ss:Height="33.75">
            <Cell ss:StyleID="s16"/>
            <Cell ss:Index="4" ss:MergeAcross="1" ss:StyleID="s53">
              <Data ss:Type="String">код</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="s54">
              <Data ss:Type="String">условное обозначение (национальное)</Data>
            </Cell>
            <Cell ss:Index="25" ss:StyleID="s20">
              <Data ss:Type="String">цифровой код</Data>
            </Cell>
            <Cell ss:StyleID="s20">
              <Data ss:Type="String">краткое наимено-вание</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s16"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s22">
              <Data ss:Type="Number">1</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s22">
              <Data ss:Type="Number">2</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="s23">
              <Data ss:Type="Number">2</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s22">
              <Data ss:Type="Number">3</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s22">
              <Data ss:Type="Number">4</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="s22">
              <Data ss:Type="Number">5</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s22">
              <Data ss:Type="Number">6</Data>
            </Cell>
            <Cell ss:StyleID="s21">
              <Data ss:Type="Number">7</Data>
            </Cell>
            <Cell ss:MergeAcross="3" ss:StyleID="s22">
              <Data ss:Type="Number">8</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s21">
              <Data ss:Type="Number">9</Data>
            </Cell>
            <Cell ss:StyleID="s22">
              <Data ss:Type="Number">10</Data>
            </Cell>
            <Cell ss:StyleID="s23">
              <Data ss:Type="Number">10</Data>
            </Cell>
            <Cell ss:StyleID="s21">
              <Data ss:Type="Number">11</Data>
>>>>>>> origin/develop
            </Cell>
          </Row>


          <xsl:apply-templates select="set[@name='ShipmentItems']/ShipmentItem" />


          <Row>
<<<<<<< HEAD
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s26">
              <Data ss:Type="String">Всего к оплате</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="s63" ss:Formula="=SUM(R[-{count(set[@name='ShipmentItems']/ShipmentItem)}]C:R[-1]C)">
              <Data ss:Type="Number">0</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s64">
              <Data ss:Type="String">Х</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="3" ss:StyleID="s65" ss:Formula="=SUM(R[-{count(set[@name='ShipmentItems']/ShipmentItem)}]C:R[-1]C)">
              <Data ss:Type="Number">0</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s65" ss:Formula="=SUM(R[-{count(set[@name='ShipmentItems']/ShipmentItem)}]C:R[-1]C)">
              <Data ss:Type="Number">0</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row ss:Height="23.25">
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s30">
              <Data ss:Type="String">Руководитель организации&#10;или иное уполномоченное лицо</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="3" ss:StyleID="s28">
              <Data ss:Type="String">Холодников Ю.В.</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="s30">
              <Data ss:Type="String">Главный бухгалтер&#10;или иное уполномоченное лицо</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s28">
              <Data ss:Type="String">Холодникова В.П.</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="3" ss:StyleID="s66">
              <Data ss:Type="String">(подпись)</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="3" ss:StyleID="s66">
              <Data ss:Type="String">(ф.и.о.)</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s31">
              <Data ss:Type="String">(подпись)</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="s66">
              <Data ss:Type="String">(ф.и.о.)</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row ss:Height="34.5">
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s30">
              <Data ss:Type="String">&#10;Индивидуальный предприниматель</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="3" ss:StyleID="s28"/>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="3" ss:StyleID="s66">
              <Data ss:Type="String">(подпись)</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="3" ss:StyleID="s66">
              <Data ss:Type="String">(ф.и.о.)</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="9" ss:StyleID="s67">
              <Data ss:Type="String">(реквизиты свидетельства о государственной &#10;регистрации индивидуального предпринимателя)</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
=======
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s26">
              <Data ss:Type="String">Всего к оплате</Data>
            </Cell>
            <Cell ss:StyleID="s27"/>
            <Cell ss:StyleID="s28"/>
            <Cell ss:StyleID="s28"/>
            <Cell ss:StyleID="s28"/>
            <Cell ss:StyleID="s28"/>
            <Cell ss:StyleID="s28"/>
            <Cell ss:StyleID="s28"/>
            <Cell ss:StyleID="s28"/>
            <Cell ss:StyleID="s28"/>
            <Cell ss:StyleID="s28"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s63" ss:Formula="=SUM(R[-{count(set[@name='ShipmentItems']/ShipmentItem)}]C:R[-1]C)">
              <Data ss:Type="Number">0</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s64">
              <Data ss:Type="String">Х</Data>
            </Cell>
            <Cell ss:StyleID="s29"/>
            <Cell ss:MergeAcross="3" ss:StyleID="s65" ss:Formula="=SUM(R[-{count(set[@name='ShipmentItems']/ShipmentItem)}]C:R[-1]C)">
              <Data ss:Type="Number">0</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s65" ss:Formula="=SUM(R[-{count(set[@name='ShipmentItems']/ShipmentItem)}]C:R[-1]C)">
              <Data ss:Type="Number">0</Data>
            </Cell>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
          </Row>
          <Row ss:Height="23.25">
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s30">
              <Data ss:Type="String">Руководитель организации&#10;или иное уполномоченное лицо</Data>
            </Cell>
            <Cell ss:StyleID="s28"/>
            <Cell ss:StyleID="s28"/>
            <Cell ss:StyleID="s28"/>
            <Cell ss:StyleID="s28"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:MergeAcross="3" ss:StyleID="s28">
              <Data ss:Type="String">Холодников Ю.В.</Data>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="s30">
              <Data ss:Type="String">Главный бухгалтер&#10;или иное уполномоченное лицо</Data>
            </Cell>
            <Cell ss:StyleID="s28"/>
            <Cell ss:StyleID="s28"/>
            <Cell ss:StyleID="s28"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s28">
              <Data ss:Type="String">Холодникова В.П.</Data>
            </Cell>
            <Cell ss:StyleID="s28"/>
            <Cell ss:StyleID="s28"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:MergeAcross="3" ss:StyleID="s66">
              <Data ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s16"/>
            <Cell ss:MergeAcross="3" ss:StyleID="s66">
              <Data ss:Type="String">(ф.и.о.)</Data>
            </Cell>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s31">
              <Data ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s31"/>
            <Cell ss:StyleID="s31"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s66">
              <Data ss:Type="String">(ф.и.о.)</Data>
            </Cell>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
          </Row>
          <Row ss:Height="34.5">
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s30">
              <Data ss:Type="String">&#10;Индивидуальный предприниматель</Data>
            </Cell>
            <Cell ss:StyleID="s28"/>
            <Cell ss:StyleID="s28"/>
            <Cell ss:StyleID="s28"/>
            <Cell ss:StyleID="s28"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:MergeAcross="3" ss:StyleID="s28"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s32"/>
            <Cell ss:StyleID="s32"/>
            <Cell ss:StyleID="s32"/>
            <Cell ss:StyleID="s32"/>
            <Cell ss:StyleID="s32"/>
            <Cell ss:StyleID="s32"/>
            <Cell ss:StyleID="s32"/>
            <Cell ss:StyleID="s32"/>
            <Cell ss:StyleID="s32"/>
            <Cell ss:StyleID="s32"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:MergeAcross="3" ss:StyleID="s66">
              <Data ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s16"/>
            <Cell ss:MergeAcross="3" ss:StyleID="s66">
              <Data ss:Type="String">(ф.и.о.)</Data>
            </Cell>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:MergeAcross="9" ss:StyleID="s67">
              <Data ss:Type="String">(реквизиты свидетельства о государственной &#10;регистрации индивидуального предпринимателя)</Data>
            </Cell>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
>>>>>>> origin/develop
          </Row>
        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
<<<<<<< HEAD
            <Layout x:Orientation="Landscape"/>
=======
>>>>>>> origin/develop
            <Header x:Margin="0.3"/>
            <Footer x:Margin="0.3"/>
            <PageMargins x:Bottom="0.75" x:Left="0.7" x:Right="0.7" x:Top="0.75"/>
          </PageSetup>
<<<<<<< HEAD
          <Unsynced/>
          <Print>
            <ValidPrinterInfo/>
            <PaperSizeIndex>9</PaperSizeIndex>
            <Scale>90</Scale>
            <HorizontalResolution>600</HorizontalResolution>
            <VerticalResolution>600</VerticalResolution>
          </Print>
          <ShowPageBreakZoom/>
=======
>>>>>>> origin/develop
          <Selected/>
          <Panes>
            <Pane>
              <Number>3</Number>
<<<<<<< HEAD
              <ActiveRow>9</ActiveRow>
              <ActiveCol>2</ActiveCol>
=======
              <ActiveRow>13</ActiveRow>
              <ActiveCol>3</ActiveCol>
              <RangeSelection>R14C4:R14C8</RangeSelection>
>>>>>>> origin/develop
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
<<<<<<< HEAD
      <Cell>
        <NamedCell ss:Name="Print_Area"/>
        <NamedCell ss:Name="Print_Area"/>
      </Cell>
=======
      <Cell ss:StyleID="s19"/>
>>>>>>> origin/develop
      <Cell ss:MergeAcross="1" ss:StyleID="s25">
        <Data ss:Type="String">
          <xsl:value-of select="@FullDetailName"/>
        </Data>
<<<<<<< HEAD
        <NamedCell ss:Name="Print_Area"/>
=======
>>>>>>> origin/develop
      </Cell>
      <Cell ss:MergeAcross="1" ss:StyleID="s24">
        <Data ss:Type="String">
          <xsl:value-of select="RequestDetail/Drawing/MeasureUnit/@Code"/>
        </Data>
<<<<<<< HEAD
        <NamedCell ss:Name="Print_Area"/>
=======
>>>>>>> origin/develop
      </Cell>
      <Cell ss:MergeAcross="2" ss:StyleID="s24">
        <Data ss:Type="String">
          <xsl:value-of select="RequestDetail/Drawing/MeasureUnit/@Name"/>
        </Data>
<<<<<<< HEAD
        <NamedCell ss:Name="Print_Area"/>
=======
>>>>>>> origin/develop
      </Cell>
      <Cell ss:MergeAcross="1" ss:StyleID="s60">
        <Data ss:Type="Number">
          <xsl:value-of select="@Count"/>
        </Data>
<<<<<<< HEAD
        <NamedCell ss:Name="Print_Area"/>
=======
>>>>>>> origin/develop
      </Cell>
      <Cell ss:MergeAcross="1" ss:StyleID="s60">
        <Data ss:Type="Number">
          <xsl:value-of select="@RealPrice"/>
        </Data>
<<<<<<< HEAD
        <NamedCell ss:Name="Print_Area"/>
=======
>>>>>>> origin/develop
      </Cell>
      <Cell ss:MergeAcross="2" ss:StyleID="s60">
        <Data ss:Type="Number">
          <xsl:value-of select="@Sum"/>
        </Data>
<<<<<<< HEAD
        <NamedCell ss:Name="Print_Area"/>
      </Cell>
      <Cell ss:MergeAcross="1" ss:StyleID="s60">
        <Data ss:Type="String">&#45;-</Data>
        <NamedCell ss:Name="Print_Area"/>
=======
      </Cell>
      <Cell ss:MergeAcross="1" ss:StyleID="s60">
        <Data ss:Type="String">&#45;-</Data>
>>>>>>> origin/develop
      </Cell>
      <Cell ss:StyleID="s24">
        <Data ss:Type="Number">
          <xsl:value-of select="@NdsPercent div 100"/>
        </Data>
<<<<<<< HEAD
        <NamedCell ss:Name="Print_Area"/>
=======
>>>>>>> origin/develop
      </Cell>
      <Cell ss:MergeAcross="3" ss:StyleID="s62">
        <Data ss:Type="Number">
          <xsl:value-of select="@NdsSum"/>
        </Data>
<<<<<<< HEAD
        <NamedCell ss:Name="Print_Area"/>
=======
>>>>>>> origin/develop
      </Cell>
      <Cell ss:MergeAcross="1" ss:StyleID="s62">
        <Data ss:Type="Number">
          <xsl:value-of select="@SumWithNds"/>
        </Data>
<<<<<<< HEAD
        <NamedCell ss:Name="Print_Area"/>
      </Cell>
      <Cell ss:StyleID="s25">
        <Data ss:Type="String">&#45;-</Data>
        <NamedCell ss:Name="Print_Area"/>
      </Cell>
      <Cell ss:StyleID="s25">
        <Data ss:Type="String">&#45;-</Data>
        <NamedCell ss:Name="Print_Area"/>
      </Cell>
      <Cell ss:StyleID="s25">
        <Data ss:Type="String">&#45;-</Data>
        <NamedCell ss:Name="Print_Area"/>
=======
      </Cell>
      <Cell ss:StyleID="s25">
        <Data ss:Type="String">&#45;-</Data>
      </Cell>
      <Cell ss:StyleID="s25">
        <Data ss:Type="String">&#45;-</Data>
      </Cell>
      <Cell ss:StyleID="s25">
        <Data ss:Type="String">&#45;-</Data>
>>>>>>> origin/develop
      </Cell>
    </Row>
  </xsl:template>

</xsl:stylesheet>
