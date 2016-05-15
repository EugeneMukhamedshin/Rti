<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
  xmlns="urn:schemas-microsoft-com:office:spreadsheet"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:o="urn:schemas-microsoft-com:office:office"
	xmlns:x="urn:schemas-microsoft-com:office:excel"
	xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet"
	xmlns:html="http://www.w3.org/TR/REC-html40"
	xmlns:retail="urn:rti">

  <xsl:output method="xml" encoding="utf-8" indent="yes" omit-xml-declaration="no"/>

  <xsl:template match="root">

    <xsl:processing-instruction name="mso-application">
      <xsl:text>progid="Excel.Sheet"</xsl:text>
    </xsl:processing-instruction>

    <Workbook xmlns="urn:schemas-microsoft-com:office:spreadsheet"
     xmlns:o="urn:schemas-microsoft-com:office:office"
     xmlns:x="urn:schemas-microsoft-com:office:excel"
     xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet"
     xmlns:html="http://www.w3.org/TR/REC-html40">
      <DocumentProperties xmlns="urn:schemas-microsoft-com:office:office">
        <Author>1</Author>
        <LastAuthor>HOME</LastAuthor>
        <Revision>1</Revision>
        <TotalTime>0</TotalTime>
        <LastPrinted>2016-03-22T13:07:50Z</LastPrinted>
        <Created>2011-06-14T14:12:30Z</Created>
        <LastSaved>2016-03-22T13:10:15Z</LastSaved>
        <Version>14.00</Version>
      </DocumentProperties>
      <OfficeDocumentSettings xmlns="urn:schemas-microsoft-com:office:office">
        <AllowPNG/>
      </OfficeDocumentSettings>
      <ExcelWorkbook xmlns="urn:schemas-microsoft-com:office:excel">
        <WindowHeight>5895</WindowHeight>
        <WindowWidth>11400</WindowWidth>
        <WindowTopX>0</WindowTopX>
        <WindowTopY>0</WindowTopY>
        <TabRatio>0</TabRatio>
        <ProtectStructure>False</ProtectStructure>
        <ProtectWindows>False</ProtectWindows>
      </ExcelWorkbook>
      <Styles>
        <Style ss:ID="Default" ss:Name="Normal">
          <Alignment ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
          <Interior/>
          <NumberFormat/>
          <Protection/>
        </Style>
        <Style ss:ID="m49035964">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="9"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m49035372">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="9"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s62">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
        </Style>
        <Style ss:ID="s63">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s64">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s65">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s71">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s77">
          <Alignment ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="9"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s78">
          <Alignment ss:Vertical="Top" ss:WrapText="1"/>
          <Borders/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="9"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s79">
          <Alignment ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="9"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s105">
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s106">
          <Alignment ss:Horizontal="Right" ss:Vertical="Top"/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="9" ss:Bold="1"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s109">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="9" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s111">
          <Alignment ss:Horizontal="Right" ss:Vertical="Top"/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="9" ss:Bold="1"/>
          <NumberFormat ss:Format="Standard"/>
        </Style>
        <Style ss:ID="s112">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="9"/>
        </Style>
        <Style ss:ID="s113">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top" ss:WrapText="1"/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="9" ss:Bold="1"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s114">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s115">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat ss:Format="0"/>
        </Style>
        <Style ss:ID="s116">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s117">
          <Alignment ss:Horizontal="Right" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat ss:Format="0"/>
        </Style>
        <Style ss:ID="s118">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s119">
          <Alignment ss:Horizontal="Right" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat ss:Format="Standard"/>
        </Style>
        <Style ss:ID="s120">
          <Alignment ss:Horizontal="Right" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat ss:Format="Standard"/>
        </Style>
        <Style ss:ID="s121">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top"/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="9"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s122">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="9" ss:Bold="1"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s123">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="9" ss:Bold="1"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s124">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="9" ss:Bold="1"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s126">
          <Alignment ss:Horizontal="Left" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="9"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s127">
          <Alignment ss:Horizontal="Left" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="9"/>
          <NumberFormat ss:Format="0"/>
        </Style>
        <Style ss:ID="s128">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="9"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s138">
          <Alignment ss:Horizontal="Left" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s139">
          <Alignment ss:Horizontal="Left" ss:Vertical="Center"/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="14" ss:Bold="1"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s140">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s144">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s145">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="9" ss:Bold="1"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s146">
          <Alignment ss:Horizontal="Left" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="9"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s147">
          <Alignment ss:Horizontal="Left" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="9"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s148">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="9"/>
          <NumberFormat ss:Format="@"/>
        </Style>
      </Styles>



      <Table ss:ExpandedColumnCount="38" ss:ExpandedRowCount="31" x:FullColumns="1"
       x:FullRows="1" ss:DefaultColumnWidth="42" ss:DefaultRowHeight="11.25">
        <Column ss:StyleID="s62" ss:AutoFitWidth="0" ss:Width="5.25"/>
        <Column ss:StyleID="s62" ss:AutoFitWidth="0" ss:Width="15.75" ss:Span="15"/>
        <Column ss:Index="18" ss:StyleID="s62" ss:AutoFitWidth="0" ss:Width="6.75"/>
        <Column ss:StyleID="s62" ss:AutoFitWidth="0" ss:Width="9"/>
        <Column ss:StyleID="s62" ss:AutoFitWidth="0" ss:Width="15.75" ss:Span="1"/>
        <Column ss:Index="22" ss:StyleID="s62" ss:AutoFitWidth="0" ss:Width="6.75"/>
        <Column ss:StyleID="s62" ss:AutoFitWidth="0" ss:Width="9"/>
        <Column ss:StyleID="s62" ss:AutoFitWidth="0" ss:Width="15.75"/>
        <Column ss:StyleID="s62" ss:AutoFitWidth="0" ss:Width="11.25"/>
        <Column ss:StyleID="s62" ss:AutoFitWidth="0" ss:Width="4.5"/>
        <Column ss:StyleID="s62" ss:AutoFitWidth="0" ss:Width="15.75" ss:Span="3"/>
        <Column ss:Index="31" ss:StyleID="s62" ss:AutoFitWidth="0" ss:Width="6.75"/>
        <Column ss:StyleID="s62" ss:AutoFitWidth="0" ss:Width="9"/>
        <Column ss:StyleID="s62" ss:AutoFitWidth="0" ss:Width="15.75" ss:Span="3"/>
        <Column ss:Index="37" ss:StyleID="s62" ss:AutoFitWidth="0" ss:Width="8.25"/>
        <Column ss:StyleID="s62" ss:AutoFitWidth="0" ss:Width="6"/>
        <Row ss:AutoFitHeight="0" ss:StyleID="s62">
          <Cell ss:Index="2" ss:MergeAcross="36" ss:MergeDown="2" ss:StyleID="s64">
            <Data
      ss:Type="String">Внимание! Оплата данного счета означает согласие с условиями поставки товара. Уведомление об оплате &#10; обязательно, в противном случае не гарантируется наличие товара на складе. Товар отпускается по факту&#10; прихода денег на р/с Поставщика, самовывозом, при наличии доверенности и паспорта.</Data>
            <NamedCell
      ss:Name="Print_Area"/>
          </Cell>
        </Row>
        <Row ss:AutoFitHeight="0" ss:StyleID="s62"/>
        <Row ss:AutoFitHeight="0"/>
        <Row ss:AutoFitHeight="0">
          <Cell ss:Index="2" ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
        </Row>
        <Row ss:AutoFitHeight="0" ss:Height="12">
          <Cell ss:Index="2" ss:MergeAcross="18" ss:StyleID="m49218004">
            <Data
      ss:Type="String">
              <xsl:value-of select="set[@name='Requests'][1]/Manufacturer/@Bank"/>
            </Data>
            <NamedCell
      ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:MergeAcross="3" ss:StyleID="m49218024">
            <Data ss:Type="String">БИК</Data>
            <NamedCell
      ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:MergeAcross="13" ss:StyleID="m49218044">
            <Data ss:Type="String">046577756</Data>
            <NamedCell
      ss:Name="Print_Area"/>
          </Cell>
        </Row>
        <Row ss:AutoFitHeight="0">
          <Cell ss:Index="2" ss:StyleID="s87">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s88">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s88">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s88">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s88">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s88">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s88">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s88">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s88">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s88">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s88">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s88">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s88">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s88">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s88">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s88">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s88">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s88">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s89">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:MergeAcross="3" ss:MergeDown="1" ss:StyleID="m49218064">
            <Data
      ss:Type="String">Сч. №</Data>
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:MergeAcross="13" ss:StyleID="s100">
            <Data ss:Type="String">30101810800000000756</Data>
            <NamedCell
      ss:Name="Print_Area"/>
          </Cell>
        </Row>
        <Row ss:AutoFitHeight="0">
          <Cell ss:Index="2" ss:MergeAcross="18" ss:StyleID="m49218104">
            <Data
      ss:Type="String">Банк получателя</Data>
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:Index="25" ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
        </Row>
        <Row ss:AutoFitHeight="0" ss:Height="12">
          <Cell ss:Index="2" ss:MergeAcross="1" ss:StyleID="s111">
            <Data ss:Type="String">ИНН</Data>
            <NamedCell
      ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:MergeAcross="6" ss:StyleID="m49139220">
            <Data ss:Type="Number">6664068381</Data>
            <NamedCell
      ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:MergeAcross="1" ss:StyleID="s111">
            <Data ss:Type="String">КПП  </Data>
            <NamedCell
      ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:MergeAcross="7" ss:StyleID="m49139260">
            <Data ss:Type="Number">667901001</Data>
            <NamedCell
      ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:MergeAcross="3" ss:MergeDown="3" ss:StyleID="m49139280">
            <Data
      ss:Type="String">Сч. №</Data>
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:MergeAcross="13" ss:MergeDown="3" ss:StyleID="m49139300">
            <Data
      ss:Type="String">40702810400000004026</Data>
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
        </Row>
        <Row ss:AutoFitHeight="0">
          <Cell ss:Index="2" ss:MergeAcross="18" ss:MergeDown="1" ss:StyleID="m49139320">
            <Data
      ss:Type="String">Общество с ограниченной ответственностью &quot;ЭЛМА-1&quot;</Data>
            <NamedCell
      ss:Name="Print_Area"/>
          </Cell>
        </Row>
        <Row ss:AutoFitHeight="0"/>
        <Row ss:AutoFitHeight="0">
          <Cell ss:Index="2" ss:MergeAcross="18" ss:StyleID="s138">
            <Data ss:Type="String">Получатель</Data>
            <NamedCell
      ss:Name="Print_Area"/>
          </Cell>
        </Row>
        <Row ss:AutoFitHeight="0">
          <Cell ss:Index="2" ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
        </Row>
        <Row ss:AutoFitHeight="0">
          <Cell ss:Index="2" ss:MergeAcross="36" ss:MergeDown="1" ss:StyleID="s144">
            <Data
      ss:Type="String">Счет на оплату № ______________ от ____________2016г.</Data>
            <NamedCell
      ss:Name="Print_Area"/>
          </Cell>
        </Row>
        <Row ss:AutoFitHeight="0"/>
        <Row ss:AutoFitHeight="0" ss:Height="6.9375" ss:StyleID="s62">
          <Cell ss:Index="2" ss:MergeAcross="36" ss:StyleID="s145">
            <NamedCell
      ss:Name="Print_Area"/>
          </Cell>
        </Row>
        <Row ss:AutoFitHeight="0" ss:Height="6.9375" ss:StyleID="s62">
          <Cell ss:Index="2" ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
        </Row>
        <Row ss:AutoFitHeight="0" ss:Height="37.3125">
          <Cell ss:StyleID="Default">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:MergeAcross="3" ss:StyleID="s149">
            <Data ss:Type="String">Поставщик:</Data>
            <NamedCell
      ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:MergeAcross="32" ss:StyleID="s151">
            <Data ss:Type="String">Общество с ограниченной ответственностью &quot;ЭЛМА-1&quot;, ИНН 6664068381, КПП 667901001, 620076, г.Екатеринбург, пл.Жуковского, д,1 литер В тел (343)295-98-29</Data>
            <NamedCell
      ss:Name="Print_Area"/>
          </Cell>
        </Row>
        <Row ss:AutoFitHeight="0" ss:Height="6.9375" ss:StyleID="s62">
          <Cell ss:Index="2" ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
        </Row>
        <Row ss:AutoFitHeight="0" ss:Height="25.3125">
          <Cell ss:StyleID="Default">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:MergeAcross="3" ss:StyleID="s149">
            <Data ss:Type="String">Покупатель:</Data>
            <NamedCell
      ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:MergeAcross="32" ss:StyleID="s151">
            <Data ss:Type="String">Наименование, ИНН/КПП, адрес,  реквизиты банка</Data>
            <NamedCell
      ss:Name="Print_Area"/>
          </Cell>
        </Row>
        <Row ss:AutoFitHeight="0" ss:Height="6.9375" ss:StyleID="s62">
          <Cell ss:Index="2" ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
        </Row>
        <Row ss:AutoFitHeight="0" ss:Height="12">
          <Cell ss:Index="2" ss:MergeAcross="1" ss:StyleID="s153">
            <Data ss:Type="String">№</Data>
            <NamedCell
      ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:MergeAcross="14" ss:StyleID="s158">
            <Data ss:Type="String">Товары (работы, услуги)</Data>
            <NamedCell
      ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:MergeAcross="3" ss:StyleID="s158">
            <Data ss:Type="String">Кол-во</Data>
            <NamedCell
      ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:MergeAcross="2" ss:StyleID="s158">
            <Data ss:Type="String">Ед.</Data>
            <NamedCell
      ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:MergeAcross="5" ss:StyleID="s158">
            <Data ss:Type="String">Цена</Data>
            <NamedCell
      ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:MergeAcross="5" ss:StyleID="m49136388">
            <Data ss:Type="String">Сумма</Data>
            <NamedCell
      ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
        </Row>
        <Row ss:AutoFitHeight="0" ss:Height="43.3125">
          <Cell ss:StyleID="Default">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:MergeAcross="1" ss:StyleID="s164">
            <Data ss:Type="Number">1</Data>
            <NamedCell
      ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:MergeAcross="14" ss:StyleID="s169">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:MergeAcross="3" ss:StyleID="s174">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:MergeAcross="2" ss:StyleID="s179">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:MergeAcross="5" ss:StyleID="s184">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:MergeAcross="5" ss:StyleID="m49136164">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s191">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
        </Row>
        <Row ss:AutoFitHeight="0" ss:Height="6.9375" ss:StyleID="s62">
          <Cell ss:Index="2" ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s192">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
        </Row>
        <Row ss:AutoFitHeight="0" ss:Height="12">
          <Cell ss:Index="2" ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s193">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s193">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s193">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s193">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s193">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s193">
            <Data ss:Type="String">Итого:</Data>
            <NamedCell
      ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:MergeAcross="5" ss:StyleID="s195">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
        </Row>
        <Row ss:AutoFitHeight="0" ss:Height="12">
          <Cell ss:Index="2" ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s193">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s193">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s193">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s193">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s193">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s193">
            <Data ss:Type="String">В том числе НДС:</Data>
            <NamedCell
      ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:MergeAcross="5" ss:StyleID="s195">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
        </Row>
        <Row ss:AutoFitHeight="0" ss:Height="12">
          <Cell ss:Index="2" ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s193">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s193">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s193">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s193">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s193">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s193">
            <Data ss:Type="String">Всего к оплате:</Data>
            <NamedCell
      ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:MergeAcross="5" ss:StyleID="s195">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
        </Row>
        <Row ss:AutoFitHeight="0" ss:Height="12">
          <Cell ss:Index="2" ss:MergeAcross="36" ss:StyleID="s197">
            <Data ss:Type="String">Всего наименований </Data>
            <NamedCell
      ss:Name="Print_Area"/>
          </Cell>
        </Row>
        <Row ss:AutoFitHeight="0" ss:Height="13.3125">
          <Cell ss:StyleID="Default">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:MergeAcross="34" ss:StyleID="s151">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s191">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s191">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
        </Row>
        <Row ss:AutoFitHeight="0" ss:Height="6.9375" ss:StyleID="s62">
          <Cell ss:Index="2" ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s145">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
        </Row>
        <Row ss:AutoFitHeight="0">
          <Cell ss:Index="2" ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
        </Row>
        <Row ss:AutoFitHeight="0" ss:Height="12">
          <Cell ss:Index="2" ss:StyleID="s198">
            <Data ss:Type="String">Руководитель</Data>
            <NamedCell
      ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s199">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s199">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s199">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s199">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:MergeAcross="9" ss:StyleID="s201">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s198">
            <Data ss:Type="String">Бухгалтер</Data>
            <NamedCell
      ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s198">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s65">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s199">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s199">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:StyleID="s199">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
          <Cell ss:MergeAcross="7" ss:StyleID="s201">
            <NamedCell ss:Name="Print_Area"/>
          </Cell>
        </Row>
      </Table>
      <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
        <PageSetup>
          <Header x:Margin="0.31496062992125984"/>
          <Footer x:Margin="0.31496062992125984"/>
          <PageMargins x:Bottom="0.74803149606299213" x:Left="0.70866141732283461"
           x:Right="0.70866141732283461" x:Top="0.74803149606299213"/>
        </PageSetup>
        <Unsynced/>
        <NoSummaryRowsBelowDetail/>
        <NoSummaryColumnsRightDetail/>
        <DisplayPageBreak/>
        <Print>
          <ValidPrinterInfo/>
          <PaperSizeIndex>9</PaperSizeIndex>
          <Scale>98</Scale>
          <HorizontalResolution>600</HorizontalResolution>
          <VerticalResolution>600</VerticalResolution>
        </Print>
        <PageBreakZoom>100</PageBreakZoom>
        <Selected/>
        <Panes>
          <Pane>
            <Number>3</Number>
            <ActiveRow>17</ActiveRow>
            <ActiveCol>38</ActiveCol>
          </Pane>
        </Panes>
        <ProtectObjects>False</ProtectObjects>
        <ProtectScenarios>False</ProtectScenarios>
      </WorksheetOptions>
    </Workbook>
  </xsl:template>

  <xsl:template match="set[@name='RequestDetails']/row">
    <xsl:call-template name = "RequestDetailRow"/>
  </xsl:template>

  <xsl:template name="RequestDetailRow">
    <Row>
      <Cell>
        <Data ss:Type="Number">
          <xsl:value-of select="@Id"/>
        </Data>
      </Cell>
      <Cell>
        <Data ss:Type="Number">
          <xsl:value-of select="@SortOrder"/>
        </Data>
      </Cell>
      <Cell>
        <Data ss:Type="String">
          <xsl:value-of select="Detail/@Name"/>
        </Data>
      </Cell>
    </Row>
  </xsl:template>

</xsl:stylesheet>
