<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE qml SYSTEM "/wt/query/qml/qml.dtd">
<qml bypassAccessControl="false">
    <statement>
        <query>
            <select distinct="false" group="false">
                <object alias="using" heading="Using Context" propertyName="container.name">
                    <property name="container">
                        <property name="name"/>
                    </property>
                </object>
                <column alias="using" heading="Using Indenture Level" type="java.lang.Long">WCTYPE|wt.part.WTPart~MBA|typeInfoWTPart.ptc_lng_3</column>
                <column alias="using" heading="Using Number"
                    isExternal="false" propertyName="number"
                    selectOnly="false" type="java.lang.String">
					master&gt;number
				</column>
                <column alias="using" heading="Using Name"
                    isExternal="false" propertyName="name"
                    selectOnly="false" type="java.lang.String">
					master&gt;name
				</column>
                <object alias="link" heading="Using Type" propertyName="displayType">
                    <property name="displayType"/>
                </object>
                <column alias="using" heading="Using State"
                    propertyName="lifeCycleState" type="wt.lifecycle.State">state.state</column>
                <object alias="using" heading="Using Version" propertyName="versionDisplayIdentifier">
                    <property name="versionDisplayIdentifier"/>
                </object>
                <column alias="used" heading="Used Indenture Level" type="java.lang.Long">WCTYPE|wt.part.WTPart~MBA|typeInfoWTPart.ptc_lng_3</column>
                <column alias="used" heading="Used Number"
                    isExternal="false" propertyName="number"
                    selectOnly="false" type="java.lang.String">
					master&gt;number
				</column>
                <column alias="used" heading="Used Name"
                    isExternal="false" propertyName="name"
                    selectOnly="false" type="java.lang.String">
					master&gt;name
				</column>
                <object alias="used" heading="Used Type" propertyName="displayType">
                    <property name="displayType"/>
                </object>
                <column alias="used" heading="Used State"
                    propertyName="lifeCycleState" type="wt.lifecycle.State">state.state</column>
                <column alias="link" heading="Used Quantity"
                    isExternal="false" propertyName="quantity.amount"
                    selectOnly="false" type="double">
					quantity.amount
				</column>
            </select>
            <from>
                <table alias="using" isExternal="false">
					wt.part.WTPart
				</table>
                <table alias="used" isExternal="false">
					wt.part.WTPart
				</table>
                <table alias="link" isExternal="false">
					wt.part.WTPartUsageLink
				</table>
                <table alias="usedMaster" isExternal="false">
					wt.part.WTPartMaster
				</table>
            </from>
            <where>
                <compositeCondition type="and">
                    <condition>
                        <operand>
                            <column alias="using"
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
                            <column alias="used"
                                heading="Iteration (iterationInfo).Latest"
                                propertyName="iterationInfo.latest" type="boolean">iterationInfo.latest</column>
                        </operand>
                        <operator type="equal"/>
                        <operand>
                            <constant heading="1" isMacro="false"
                                type="java.lang.Object" xml:space="preserve">1</constant>
                        </operand>
                    </condition>
                </compositeCondition>
            </where>
            <orderBy>
                <orderByItem>
                    <columnTarget heading="Using Indenture Level"/>
                </orderByItem>
                <orderByItem>
                    <columnTarget heading="Using Number"/>
                </orderByItem>
                <orderByItem>
                    <columnTarget heading="Used Number"/>
                </orderByItem>
            </orderBy>
            <referenceJoin>
                <join name="roleBObjectRef">
                    <aliasTarget alias="link"/>
                    <aliasTarget alias="usedMaster"/>
                </join>
                <join name="roleAObjectRef">
                    <aliasTarget alias="link"/>
                    <aliasTarget alias="using"/>
                </join>
                <join name="masterReference">
                    <aliasTarget alias="used"/>
                    <aliasTarget alias="usedMaster"/>
                </join>
            </referenceJoin>
        </query>
    </statement>
</qml>
