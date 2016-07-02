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
        <Style ss:ID="m158195752">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s18">
          <Alignment ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s19">
          <Alignment ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders/>
          <NumberFormat ss:Format="Short Date"/>
        </Style>
        <Style ss:ID="s20">
          <Alignment ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s21">
          <Alignment ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss"/>
        </Style>
        <Style ss:ID="s22">
          <Alignment ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders/>
        </Style>
        <Style ss:ID="s23">
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="12"/>
        </Style>
        <Style ss:ID="s24">
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
        </Style>
        <Style ss:ID="s25">
          <Borders/>
        </Style>
        <Style ss:ID="s27">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="12"/>
        </Style>
        <Style ss:ID="s28">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="14"/>
        </Style>
        <Style ss:ID="s29">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="14"/>
        </Style>
        <Style ss:ID="s36">
          <Alignment ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s37">
          <Alignment ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss"/>
        </Style>
        <Style ss:ID="s38">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss"/>
        </Style>
        <Style ss:ID="s39">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s40">
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss"/>
        </Style>
        <Style ss:ID="s41">
          <Alignment ss:Vertical="Bottom"/>
        </Style>
        <Style ss:ID="s42">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s46">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s49">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s50">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
      </Styles>
      <Worksheet ss:Name="Лист1">
        <Table x:FullColumns="1" x:FullRows="1" ss:DefaultRowHeight="15">
          <Column ss:Index="5" ss:AutoFitWidth="0" ss:Width="51.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="27.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="38.25"/>
          <Column ss:Index="9" ss:AutoFitWidth="0" ss:Width="63.75"/>
          <Row>
            <Cell ss:MergeAcross="2" ss:StyleID="s46"/>
            <Cell ss:StyleID="s18"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s20"/>
            <Cell ss:StyleID="s21"/>
            <Cell ss:StyleID="s21"/>
            <Cell ss:StyleID="s21"/>
            <Cell ss:StyleID="s21"/>
            <Cell ss:StyleID="s22"/>
          </Row>
          <Row ss:Height="16.5">
            <Cell ss:Index="7" ss:StyleID="s23">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Request/Manufacturer/@Name"/>
              </Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:Index="7" ss:StyleID="s24">
              <Data ss:Type="String">наименование предприятия-изготовителя</Data>
            </Cell>
            <Cell ss:StyleID="s24"/>
            <Cell ss:StyleID="s24"/>
            <Cell ss:StyleID="s24"/>
          </Row>
          <Row>
            <Cell ss:Index="7" ss:StyleID="s25"/>
            <Cell ss:StyleID="s25"/>
            <Cell ss:StyleID="s25"/>
            <Cell ss:StyleID="s25"/>
          </Row>
          <Row ss:Height="18">
            <Cell ss:MergeAcross="10" ss:StyleID="s29">
              <Data ss:Type="String">ПАСПОРТ №</Data>
            </Cell>
          </Row>
          <Row ss:Height="18">
            <Cell ss:StyleID="s27">
              <Data ss:Type="String">Покупатель: </Data>
            </Cell>
            <Cell ss:StyleID="s28"/>
            <Cell ss:StyleID="s28">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Payer/@FullName"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s28"/>
            <Cell ss:StyleID="s28"/>
            <Cell ss:StyleID="s29"/>
            <Cell ss:StyleID="s29"/>
            <Cell ss:StyleID="s29"/>
            <Cell ss:StyleID="s29"/>
            <Cell ss:StyleID="s29"/>
            <Cell ss:StyleID="s29"/>
          </Row>
          <Row ss:Height="18">
            <Cell ss:StyleID="s27"/>
            <Cell ss:StyleID="s28"/>
            <Cell ss:StyleID="s28"/>
            <Cell ss:StyleID="s28"/>
            <Cell ss:StyleID="s28"/>
            <Cell ss:StyleID="s29"/>
            <Cell ss:StyleID="s29"/>
            <Cell ss:StyleID="s29"/>
            <Cell ss:StyleID="s29"/>
            <Cell ss:StyleID="s29"/>
            <Cell ss:StyleID="s29"/>
          </Row>
          <Row>
            <Cell ss:Index="2">
              <Data ss:Type="String">1. Свидетельство о приемке</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:MergeAcross="2" ss:MergeDown="2" ss:StyleID="s42">
              <Data
      ss:Type="String">Наименование РТД или номер детали по чертежу</Data>
            </Cell>
            <Cell ss:MergeDown="2" ss:StyleID="s49">
              <Data ss:Type="String">Дата изготовления (год, м-ц)</Data>
            </Cell>
            <Cell ss:MergeDown="2" ss:StyleID="s42">
              <Data ss:Type="String">Дата отгрузки</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s50">
              <Data ss:Type="String">Количество</Data>
            </Cell>
            <Cell ss:MergeDown="2" ss:StyleID="s42">
              <Data ss:Type="String">Номер анализа дата</Data>
            </Cell>
            <Cell ss:MergeDown="2" ss:StyleID="s42">
              <Data ss:Type="String">Марка резины</Data>
            </Cell>
            <Cell ss:MergeDown="2" ss:StyleID="s42">
              <Data ss:Type="String">Вид упаковки</Data>
            </Cell>
            <Cell ss:MergeDown="2" ss:StyleID="s42">
              <Data ss:Type="String">К-во мест в партии</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:Index="6" ss:MergeDown="1" ss:StyleID="s42">
              <Data ss:Type="String">шт</Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="s42">
              <Data ss:Type="String">кг</Data>
            </Cell>
          </Row>


          <xsl:apply-templates select="set[@name='ShipmentItems']/ShipmentItem" />


          <Row>
            <Cell>
              <Data ss:Type="String">РТД приняты ОТК представителем заказчика (при наличии приемки)</Data>
            </Cell>
            <Cell ss:Index="9" ss:StyleID="s40"/>
          </Row>
          <Row>
            <Cell>
              <Data ss:Type="String"> </Data>
            </Cell>
            <Cell>
              <Data ss:Type="String">2. Результаты испытаний</Data>
            </Cell>
          </Row>
          <Row>
            <Cell>
              <Data ss:Type="String">Внешний вид, размеры РТД, физико-механические показатели резины и РТД соответствуют </Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s40">
              <Data ss:Type="String">требованиям чертежа ___________________________ и ТУ ____________________________</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:Index="2">
              <Data ss:Type="String">3. Гарантии поставщика</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s40">
              <Data ss:Type="String">Срок гарантии, гарантийная наработка, условия транспортировки и хранения в соответствии с ТУ  </Data>
            </Cell>
          </Row>
          <Row>
            <Cell>
              <Data ss:Type="String"> </Data>
            </Cell>
          </Row>
          <Row>
            <Cell>
              <Data ss:Type="String">НАЧАЛЬНИК ОТК____________Наумова Е.В.</Data>
            </Cell>
            <Cell ss:Index="5" ss:StyleID="s41"/>
            <Cell ss:StyleID="s41">
              <Data ss:Type="String">НАЧАЛЬНИК ЦЕХА____________________Холодников М.Ю.</Data>
            </Cell>
            <Cell ss:StyleID="s41"/>
            <Cell ss:StyleID="s41"/>
            <Cell ss:StyleID="s41"/>
            <Cell ss:StyleID="s41"/>
            <Cell ss:StyleID="s41"/>
          </Row>
          <Row ss:Index="22">
            <Cell ss:StyleID="s40">
              <Data ss:Type="String">ПРЕДСТАВИТЕЛЬ ЗАКАЗЧИКА__________________</Data>
            </Cell>
          </Row>
          <Row ss:Index="24">
            <Cell ss:MergeAcross="2" ss:StyleID="s46"/>
            <Cell ss:StyleID="s18"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s20"/>
            <Cell ss:StyleID="s21"/>
            <Cell ss:StyleID="s21"/>
            <Cell ss:StyleID="s21"/>
            <Cell ss:StyleID="s21"/>
            <Cell ss:StyleID="s22"/>
          </Row>
        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Header x:Margin="0.3"/>
            <Footer x:Margin="0.3"/>
            <PageMargins x:Bottom="0.75" x:Left="0.7" x:Right="0.7" x:Top="0.75"/>
          </PageSetup>
          <Selected/>
          <Panes>
            <Pane>
              <Number>3</Number>
              <ActiveRow>15</ActiveRow>
              <ActiveCol>6</ActiveCol>
            </Pane>
          </Panes>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
      </Worksheet>
      <Worksheet ss:Name="Лист2">
        <Table ss:ExpandedColumnCount="1" ss:ExpandedRowCount="1" x:FullColumns="1"
         x:FullRows="1" ss:DefaultRowHeight="15">
        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Header x:Margin="0.3"/>
            <Footer x:Margin="0.3"/>
            <PageMargins x:Bottom="0.75" x:Left="0.7" x:Right="0.7" x:Top="0.75"/>
          </PageSetup>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
      </Worksheet>
      <Worksheet ss:Name="Лист3">
        <Table ss:ExpandedColumnCount="1" ss:ExpandedRowCount="1" x:FullColumns="1"
         x:FullRows="1" ss:DefaultRowHeight="15">
        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Header x:Margin="0.3"/>
            <Footer x:Margin="0.3"/>
            <PageMargins x:Bottom="0.75" x:Left="0.7" x:Right="0.7" x:Top="0.75"/>
          </PageSetup>
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
    <Row ss:Index="12">
      <Cell ss:MergeAcross="2" ss:StyleID="m158195752">
        <Data ss:Type="String">
          <xsl:value-of select="@FullDetailName"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s36">
        <Data ss:Type="String">
        </Data>
      </Cell>
      <Cell ss:StyleID="s36">
        <Data ss:Type="String">
          <xsl:value-of select="rti:FormatDateTime(Shipment/@Date, 'dd.MM.yyyy')"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s36">
        <Data ss:Type="String">
          <xsl:value-of select="@Count"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s37">
        <Data ss:Type="String">
          <xsl:value-of select="@NetMass"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s37">
        <Data ss:Type="String"> </Data>
      </Cell>
      <Cell ss:StyleID="s38">
        <Data ss:Type="String"> </Data>
      </Cell>
      <Cell ss:StyleID="s37">
        <Data ss:Type="String">
          <xsl:value-of select="@PackType"/>
        </Data>
      </Cell><Cell ss:StyleID="s39">
        <Data ss:Type="String">
          <xsl:value-of select="@CountOfPlaces"/>
        </Data>
      </Cell>
    </Row>
  </xsl:template>

</xsl:stylesheet>
