<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE qml SYSTEM "/wt/query/qml/qml.dtd">
<qml bypassAccessControl="true" legacyMode="false">
    <statement>
        <query>
            <select distinct="true" group="true">
                <column alias="Context" heading="Context Name"
                    propertyName="name" type="java.lang.String">containerInfo.name</column>
                <column alias="Part" heading="Part Number"
                    propertyName="number" type="java.lang.String">master&gt;number</column>
                <column alias="Part" heading="Part Name"
                    propertyName="name" type="java.lang.String">master&gt;name</column>
                <column alias="Part" heading="Part Indenture Level" type="java.lang.Long">WCTYPE|wt.part.WTPart~MBA|typeInfoWTPart.ptc_lng_3</column>
                <object alias="Part" heading="Part Type" propertyName="displayType">
                    <property name="displayType"/>
                </object>
                <column alias="Part" heading="Part Design Organisation" type="java.lang.String">WCTYPE|wt.part.WTPart~IBA|local.thalesgroup.au.DesignOrganisation</column>
                <object alias="Part" heading="Part Version" propertyName="iterationDisplayIdentifier">
                    <property name="iterationDisplayIdentifier"/>
                </object>
                <column alias="Part" heading="Part State"
                    propertyName="lifeCycleState" type="wt.lifecycle.State">state.state</column>
                <column alias="Part Uses Occurrence"
                    heading="Part Quantity Fitted"
                    propertyName="quantity.amount" type="double">quantity.amount</column>
                <column alias="Document" heading="Document Number"
                    propertyName="number" type="java.lang.String">master&gt;number</column>
                <column alias="Document" heading="Document Name"
                    propertyName="name" type="java.lang.String">master&gt;name</column>
                <object alias="Document" heading="Document Version" propertyName="versionDisplayIdentifier">
                    <property name="versionDisplayIdentifier"/>
                </object>
                <column alias="Document" heading="Document Type"
                    propertyName="docType" type="wt.doc.DocumentType">docType</column>
                <column alias="General" heading="Technical Manual (Y/N)" type="java.lang.String">WCTYPE|wt.doc.WTDocument|local.thalesgroup.au.General~MBA|typeInfoWTDocument.ptc_str_2</column>
                <column alias="Document" heading="Drawing (Y/N)" type="java.lang.String">WCTYPE|wt.doc.WTDocument~MBA|typeInfoWTDocument.ptc_str_20</column>
                <column alias="Document" heading="Drawing Type" type="java.lang.String">WCTYPE|wt.doc.WTDocument~MBA|typeInfoWTDocument.ptc_str_21</column>
                <column alias="Document" heading="Drawing Size" type="java.lang.String">WCTYPE|wt.doc.WTDocument~MBA|typeInfoWTDocument.ptc_str_22</column>
                <column alias="Document"
                    heading="Drawing Number Of Sheets" type="java.lang.String">WCTYPE|wt.doc.WTDocument~MBA|typeInfoWTDocument.ptc_str_23</column>
                <column alias="OneSKY P/ECP" heading="P/ECP Number"
                    propertyName="number" type="java.lang.String">master&gt;number</column>
                <column alias="OneSKY P/ECP" heading="P/ECP Name"
                    propertyName="name" type="java.lang.String">master&gt;name</column>
                <column alias="OneSKY P/ECP"
                    heading="OneSKY P/ECP (Y/N)" type="java.lang.String">WCTYPE|wt.change2.WTChangeRequest2|local.thalesgroup.au.OneSKY_P_ECP~MBA|typeInfoWTChangeRequest2.ptc_str_16</column>
                <column alias="OneSKY P/ECP" heading="P/ECP Class" type="java.lang.String">WCTYPE|wt.change2.WTChangeRequest2|local.thalesgroup.au.OneSKY_P_ECP~MBA|typeInfoWTChangeRequest2.ptc_str_14</column>
                <object alias="OneSKY P/ECP" heading="P/ECP Version" propertyName="versionIdentifier.value">
                    <property name="versionIdentifier">
                        <property name="value"/>
                    </property>
                </object>
                <column alias="OneSKY P/ECP"
                    heading="P/ECP Justification Code" type="java.lang.String">WCTYPE|wt.change2.WTChangeRequest2|local.thalesgroup.au.OneSKY_P_ECP~MBA|typeInfoWTChangeRequest2.ptc_str_11</column>
                <column alias="OneSKY P/ECP" heading="P/ECP Date Raised"
                    propertyName="createTimestamp" type="java.sql.Timestamp">thePersistInfo.createStamp</column>
                <column alias="OneSKY P/ECP" heading="P/ECP Status"
                    propertyName="lifeCycleState" type="wt.lifecycle.State">state.state</column>
                <column alias="OneSKY P/ECP"
                    heading="P/ECP CCB Decision" type="java.lang.String">WCTYPE|wt.change2.WTChangeRequest2|local.thalesgroup.au.OneSKY_P_ECP~MBA|typeInfoWTChangeRequest2.ptc_str_1</column>
                <column alias="OneSKY P/ECP"
                    heading="P/ECP CCB Decision Date" type="java.lang.String">WCTYPE|wt.change2.WTChangeRequest2|local.thalesgroup.au.OneSKY_P_ECP~MBA|typeInfoWTChangeRequest2.ptc_str_10</column>
                <column alias="OneSKY P/ECP"
                    heading="P/ECP Appproval Authority" type="java.lang.String">WCTYPE|wt.change2.WTChangeRequest2|local.thalesgroup.au.OneSKY_P_ECP~MBA|typeInfoWTChangeRequest2.ptc_str_15</column>
                <column alias="OneSKY P/ECP"
                    heading="P/ECP Production Effectivity" type="java.lang.String">WCTYPE|wt.change2.WTChangeRequest2|local.thalesgroup.au.OneSKY_P_ECP~MBA|typeInfoWTChangeRequest2.ptc_str_12</column>
                <column alias="OneSKY P/ECP"
                    heading="P/ECP Retrofit Effectivity" type="java.lang.String">WCTYPE|wt.change2.WTChangeRequest2|local.thalesgroup.au.OneSKY_P_ECP~MBA|typeInfoWTChangeRequest2.ptc_str_13</column>
                <column alias="OneSKY ECO" heading="ECO Number"
                    propertyName="number" type="java.lang.String">master&gt;number</column>
                <column alias="Part" heading="ECO Name"
                    propertyName="name" type="java.lang.String">master&gt;name</column>
                <column alias="Part" heading="ECO State"
                    propertyName="lifeCycleState" type="wt.lifecycle.State">state.state</column>
                <column alias="OneSKY ECO"
                    heading="ECO Retrofit Effectivity" type="java.lang.String">WCTYPE|wt.change2.WTChangeOrder2|local.thalesgroup.au.OneSKY_ECO~MBA|typeInfoWTChangeOrder2.ptc_str_10</column>
                <column alias="OneSKY ECO"
                    heading="ECO Product Effectivity" type="java.lang.String">WCTYPE|wt.change2.WTChangeOrder2|local.thalesgroup.au.OneSKY_ECO~MBA|typeInfoWTChangeOrder2.ptc_str_1</column>
                <column alias="Form SG2" heading="Form SG2 Number"
                    propertyName="number" type="java.lang.String">master&gt;number</column>
                <column alias="Form SG2" heading="Form SG2 Title"
                    propertyName="name" type="java.lang.String">master&gt;name</column>
                <column alias="Form SG2" heading="Form SG2 Description"
                    propertyName="description" type="java.lang.String">description</column>
                <column alias="Form SG2" heading="OneSKY SG2 Category" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_11</column>
                <column alias="Form SG2" heading="Form SG2 Date Raised"
                    propertyName="createTimestamp" type="java.sql.Timestamp">thePersistInfo.createStamp</column>
                <column alias="Form SG2" heading="Form SG2 State"
                    propertyName="lifeCycleState" type="wt.lifecycle.State">state.state</column>
                <column alias="Form SG2"
                    heading="OneSKY SG2 Part6 QAR Appointment" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_64</column>
                <column alias="Form SG2"
                    heading="OneSKY SG2 Part6 QAR Signature Date"
                    propertyName="resolutionDate" type="java.sql.Timestamp">resolutionDate</column>
                <column alias="Form SG2"
                    heading="OneSKY SG2 Affected Serial Numbers" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_12</column>
                <column alias="Part"
                    heading="Part Line Replaceable Unit (Y/N)" type="java.lang.Boolean">WCTYPE|wt.part.WTPart~IBA|local.thalesgroup.au.LineReplaceableUnit</column>
                <column alias="Part" heading="Part Ancillary Equipment" type="java.lang.String">WCTYPE|wt.part.WTPart~MBA|typeInfoWTPart.ptc_str_25</column>
                <column alias="Part"
                    heading="Part Ancillary Equipment Designation" type="java.lang.String">WCTYPE|wt.part.WTPart~MBA|typeInfoWTPart.ptc_str_3</column>
            </select>
            <from>
                <table alias="Part" isExternal="false">
wt.part.WTPart
</table>
                <table alias="Part Usage" isExternal="false">
wt.part.WTPartUsageLink
</table>
                <table alias="Part Uses Occurrence" isExternal="false">
wt.part.PartUsesOccurrence
</table>
                <table
                    alias="Change Request (wt.change2.WTChangeRequest2)" outerJoinAlias="Part">wt.change2.WTChangeRequest2</table>
                <table alias="Form SG2" outerJoinAlias="Part">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation</table>
                <table alias="Change Notice (wt.change2.WTChangeOrder2)" outerJoinAlias="Change Request (wt.change2.WTChangeRequest2)">wt.change2.WTChangeOrder2</table>
                <table alias="General" outerJoinAlias="Part">WCTYPE|wt.doc.WTDocument|local.thalesgroup.au.General</table>
                <table alias="OneSKY ECO" outerJoinAlias="Part">WCTYPE|wt.change2.WTChangeOrder2|local.thalesgroup.au.OneSKY_ECO</table>
                <table alias="OneSKY P/ECP" outerJoinAlias="Part">WCTYPE|wt.change2.WTChangeRequest2|local.thalesgroup.au.OneSKY_P_ECP</table>
                <table alias="Document" outerJoinAlias="Part">wt.doc.WTDocument</table>
                <table alias="Context">wt.inf.container.WTContainer</table>
            </from>
            <where>
                <compositeCondition type="and">
                    <condition>
                        <operand>
                            <column alias="Part"
                                heading="Iteration (iterationInfo).Latest"
                                propertyName="iterationInfo.latest" type="boolean">iterationInfo.latest</column>
                        </operand>
                        <operator type="equal"/>
                        <operand>
                            <constant heading="1" isMacro="false"
                                type="java.lang.Object" xml:space="preserve">1</constant>
                        </operand>
                    </condition>
                    <compositeCondition type="or">
                        <condition>
                            <operand>
                                <column alias="Document"
                                    heading="Latest Iteration"
                                    propertyName="latestIteration" type="boolean">iterationInfo.latest</column>
                            </operand>
                            <operator type="equal"/>
                            <operand>
                                <constant heading="1" isMacro="false"
                                    type="java.lang.Object" xml:space="preserve">1</constant>
                            </operand>
                        </condition>
                        <condition>
                            <operand>
                                <column alias="Document"
                                    heading="Latest Iteration"
                                    propertyName="latestIteration" type="boolean">iterationInfo.latest</column>
                            </operand>
                            <nullOperator type="isNull"/>
                        </condition>
                    </compositeCondition>
                    <compositeCondition type="or">
                        <condition>
                            <operand>
                                <column alias="OneSKY ECO"
                                    heading="Iteration (iterationInfo).Latest"
                                    propertyName="iterationInfo.latest" type="boolean">iterationInfo.latest</column>
                            </operand>
                            <operator type="equal"/>
                            <operand>
                                <constant heading="1" isMacro="false"
                                    type="java.lang.Object" xml:space="preserve">1</constant>
                            </operand>
                        </condition>
                        <condition>
                            <operand>
                                <column alias="OneSKY ECO"
                                    heading="Iteration (iterationInfo).Latest"
                                    propertyName="iterationInfo.latest" type="boolean">iterationInfo.latest</column>
                            </operand>
                            <nullOperator type="isNull"/>
                        </condition>
                    </compositeCondition>
                    <compositeCondition type="or">
                        <condition>
                            <operand>
                                <column alias="Form SG2"
                                    heading="Iteration (iterationInfo).Latest"
                                    propertyName="iterationInfo.latest" type="boolean">iterationInfo.latest</column>
                            </operand>
                            <operator type="equal"/>
                            <operand>
                                <constant heading="1" isMacro="false"
                                    type="java.lang.Object" xml:space="preserve">1</constant>
                            </operand>
                        </condition>
                        <condition>
                            <operand>
                                <column alias="Form SG2"
                                    heading="Iteration (iterationInfo).Latest"
                                    propertyName="iterationInfo.latest" type="boolean">iterationInfo.latest</column>
                            </operand>
                            <nullOperator type="isNull"/>
                        </condition>
                    </compositeCondition>
                    <compositeCondition type="or">
                        <condition>
                            <operand>
                                <column alias="OneSKY P/ECP"
                                    heading="Iteration (iterationInfo).Latest"
                                    propertyName="iterationInfo.latest" type="boolean">iterationInfo.latest</column>
                            </operand>
                            <operator type="equal"/>
                            <operand>
                                <constant heading="1" isMacro="false"
                                    type="java.lang.Object" xml:space="preserve">1</constant>
                            </operand>
                        </condition>
                        <condition>
                            <operand>
                                <column alias="OneSKY P/ECP"
                                    heading="Iteration (iterationInfo).Latest"
                                    propertyName="iterationInfo.latest" type="boolean">iterationInfo.latest</column>
                            </operand>
                            <nullOperator type="isNull"/>
                        </condition>
                    </compositeCondition>
                </compositeCondition>
            </where>
            <orderBy>
                <orderByItem>
                    <columnTarget heading="Part Number"/>
                </orderByItem>
            </orderBy>
            <linkJoin>
                <join name="wt.change2.RelevantRequestData2">
                    <aliasTarget alias="Change Request (wt.change2.WTChangeRequest2)"/>
                    <aliasTarget alias="Part"/>
                </join>
                <join name="wt.change2.ReportedAgainst">
                    <aliasTarget alias="Form SG2"/>
                    <aliasTarget alias="Part"/>
                </join>
                <join name="wt.change2.AddressedBy2">
                    <aliasTarget alias="Change Request (wt.change2.WTChangeRequest2)"/>
                    <aliasTarget alias="Change Notice (wt.change2.WTChangeOrder2)"/>
                </join>
                <join name="wt.part.WTPartDocumentLink">
                    <aliasTarget alias="Part"/>
                    <aliasTarget alias="General"/>
                </join>
                <join name="wt.part.WTPartDocumentLink">
                    <aliasTarget alias="Part"/>
                    <aliasTarget alias="Document"/>
                </join>
            </linkJoin>
            <referenceJoin>
                <join name="linkReference">
                    <aliasTarget alias="Part Uses Occurrence"/>
                    <aliasTarget alias="Part Usage"/>
                </join>
                <join name="containerReference">
                    <aliasTarget alias="Part"/>
                    <aliasTarget alias="Context"/>
                </join>
            </referenceJoin>
        </query>
    </statement>
</qml>
