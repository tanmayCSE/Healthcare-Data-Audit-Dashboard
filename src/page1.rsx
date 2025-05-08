<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
>
  <SqlQueryUnified
    id="query2"
    notificationDuration={4.5}
    query={include("../lib/query2.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="18f3996e-41e3-4f72-8061-ba82f61c4faa"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query3"
    query={include("../lib/query3.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="18f3996e-41e3-4f72-8061-ba82f61c4faa"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query4"
    notificationDuration={4.5}
    query={include("../lib/query4.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="18f3996e-41e3-4f72-8061-ba82f61c4faa"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query5"
    notificationDuration={4.5}
    query={include("../lib/query5.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="18f3996e-41e3-4f72-8061-ba82f61c4faa"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query6"
    query={include("../lib/query6.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="18f3996e-41e3-4f72-8061-ba82f61c4faa"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query7"
    query={include("../lib/query7.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="18f3996e-41e3-4f72-8061-ba82f61c4faa"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query8"
    query={include("../lib/query8.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="18f3996e-41e3-4f72-8061-ba82f61c4faa"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query9"
    query={include("../lib/query9.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="18f3996e-41e3-4f72-8061-ba82f61c4faa"
    warningCodes={[]}
  />
  <Include src="./header.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Text id="text3" value="**🔰 TASK 1**" verticalAlign="center" />
    <Text
      id="text13"
      value="👋 Following encounters from the Client_EHR_Closed Encounters file are not found in the Imported_Closed Encounters file."
      verticalAlign="center"
    />
    <Table
      id="missing_encounters"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ query2.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="f9bdd"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="Patient Name"
        label="Patient Name"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="263d1"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="Provider Name"
        label="Rendering Provider"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="2acf6"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        key="formatted_date"
        label="Date of Service"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="missing_encounters"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="missing_encounters"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Text id="text1" value="**🔰 TASK 2**" verticalAlign="center" />
    <Text
      id="text2"
      value="👋 Comparing Dates Between EHR and DB

🤷🏻 Why?
i. Finds encounters where dates differ by ±3 days.
ii. Helps detect small date mismatches that may have caused missing records."
      verticalAlign="center"
    />
    <Table
      id="table1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ query3.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="872d5"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="Patient Name"
        label="Patient name"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="a50a8"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="Provider Name"
        label="Provider name"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="8ff63"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        key="ehr_date"
        label="Ehr date"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="4b21c"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        key="db_date"
        label="Db date"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Text
      id="text12"
      value="👋 Checking for NULL or blank dates"
      verticalAlign="center"
    />
    <Table
      id="table7"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ query9.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="c62e7"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="c62e7"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="c44e6"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="Patient Name"
        label="Patient name"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="c66e5"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="Provider Name"
        label="Provider name"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="3db8d"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="Date of Service"
        label="Date of service"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="4561e"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="CPT Code"
        label="Cpt code"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table7"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table7"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Text
      id="text4"
      value="👋 Checking for Provider Name Issues"
      verticalAlign="center"
    />
    <Text
      id="text5"
      value="🤷🏻 Why?
i. Finds provider names that exist in one dataset but not the other.
ii. Detects spelling inconsistencies, missing entries, or format differences."
      verticalAlign="center"
    />
    <Table
      id="table2"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ query4.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="c2365"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="ehr_provider"
        label="Ehr provider"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="0adbf"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="db_provider"
        label="Db provider"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table2"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table2"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Text
      id="text6"
      value="👋 Checking for CPT Code Differences"
      verticalAlign="center"
    />
    <Text
      id="text7"
      value="🤷🏻 Why?
i. Expands CPT codes into separate rows."
      verticalAlign="center"
    />
    <Table
      id="table3"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ query5.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="a039a"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="Patient Name"
        label="Patient name"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="7aa4c"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="Provider Name"
        label="Provider name"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="5ae4a"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        key="from_date_range"
        label="From date range"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="e83cf"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="expanded_cpt"
        label="Expanded cpt"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table3"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table3"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Text
      id="text8"
      value="ii. Compares individual CPT codes between EHR and DB.
iii. Detects missing or mismatched CPT codes."
      verticalAlign="center"
    />
    <Table
      id="table4"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ query6.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="d9fb4"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="Patient Name"
        label="Patient name"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="c569a"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="Provider Name"
        label="Provider name"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="d367a"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="Date of Service"
        label="Date of service"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="f1af9"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="CPT Code"
        label="Cpt code"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="a7bbd"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="db_cpt"
        label="Db cpt"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table4"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table4"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Text
      id="text10"
      value="👋 Checking the number of missing encounters per provider

🤷🏻 Why?
i. If certain providers have more missing data, need to check if their records have any common issue

"
      verticalAlign="center"
    />
    <Table
      id="table5"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ query7.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="8cbc8"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="Provider Name"
        label="Provider name"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="215fa"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="missing_encounters"
        label="Missing encounters"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table5"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table5"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Text
      id="text11"
      value="👋 identify duplicate records in the ehr_data"
      verticalAlign="center"
    />
    <Table
      id="table6"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ query8.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="7f9b2"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="Patient Name"
        label="Patient name"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="bc40a"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="Date of Service"
        label="Date of service"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="3a320"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="CPT Code"
        label="Cpt code"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="633e3"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="duplicate_count"
        label="Duplicate count"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table6"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table6"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Text
      id="text9"
      heightType="fixed"
      value="🧐 **Findings:**

♻️ My analysis of the **ehr_data** and **db_data** datasets has revealed several key patterns and potential reasons why certain encounters were not imported into **Imported_Closed_Encounters file**. Below are the major findings categorized based on trends, mismatches, formatting issues, and data gaps.

i. **Provider-Specific Variations:** Some providers had significantly more missing encounters compared to others, suggesting inconsistencies in how data was recorded or imported.

ii. **Duplicate Records in EHR Data:** This suggests redundant data entries, which may have been ignored during import to avoid duplication.

iii. **Time Zone Adjustments:** The timestamps in ehr_data included UTC offsets (T00:00:00.000Z), whereas db_data used standard date format without time zones. This may have caused some valid records to be misinterpreted as outside the accepted date range.

iv. **Date Format Differences:** While most Date of Service values were correctly formatted, two instances had formatting inconsistencies, causing import failures.

v. **CPT Code Issues:** Encounters with uncommon or null CPT codes were more likely to be missing from db_data. Also, some CPT codes contained non-numeric characters, making them incompatible with the database

"
      verticalAlign="center"
    />
  </Frame>
</Screen>
