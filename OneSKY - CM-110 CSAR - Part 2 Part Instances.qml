<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE qml SYSTEM "/wt/query/qml/qml.dtd">
<qml bypassAccessControl="true">
    <statement>
        <query>
            <select distinct="true" group="true">
                <object alias="Part Instance" heading="Context Name" propertyName="container.name">
                    <property name="container">
                        <property name="name"/>
                    </property>
                </object>
                <object alias="Part Instance" heading="Part Number" propertyName="productNumber">
                    <property name="productNumber"/>
                </object>
                <object alias="Part Instance" heading="Part Name" propertyName="productName">
                    <property name="productName"/>
                </object>
                <column alias="Part Instance" heading="Serial Number"
                    propertyName="serialNumber" type="java.lang.String">master&gt;serialNumber</column>
                <object alias="Part Instance"
                    heading="Part Configuration Name" propertyName="configurationName">
                    <property name="configurationName"/>
                </object>
                <column alias="Part Instance"
                    heading="Serial Number State"
                    propertyName="lifeCycleState" type="wt.lifecycle.State">state.state</column>
            </select>
            <from>
                <table alias="Part" isExternal="false">
wt.part.WTPart
</table>
                <table alias="Part Instance" outerJoinAlias="Part">wt.part.WTProductInstance2</table>
            </from>
            <where>
                <compositeCondition type="and">
                    <condition>
                        <operand>
                            <column alias="Part"
                                heading="Context (containerReference).Object Id.Id"
                                propertyName="containerReference.objectId.id" type="long">containerReference.key.id</column>
                        </operand>
                        <operator type="equal"/>
                        <operand>
                            <column alias="Part Instance"
                                heading="Context (containerReference).Object Id.Id"
                                propertyName="containerReference.objectId.id" type="long">containerReference.key.id</column>
                        </operand>
                    </condition>
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
                    <condition>
                        <operand>
                            <column alias="Part Instance"
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
        </query>
    </statement>
</qml>
