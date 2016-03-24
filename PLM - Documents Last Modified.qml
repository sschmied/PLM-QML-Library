<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE qml SYSTEM "/wt/query/qml/qml.dtd">
<qml>
    <statement>
        <query>
            <select>
                <object alias="Document" heading="Document" propertyName=""/>
                <column alias="Document" heading="Title"
                    propertyName="title" type="java.lang.String">title</column>
                <column alias="Document" heading="Description"
                    propertyName="description" type="java.lang.String">description</column>
                <object alias="Document" heading="Iteration" propertyName="iterationDisplayIdentifier">
                    <property name="iterationDisplayIdentifier"/>
                </object>
                <column alias="Document" heading="State"
                    propertyName="lifeCycleState" type="wt.lifecycle.State">state.state</column>
                <column alias="Document" heading="Last Modified"
                    propertyName="modifyTimestamp" type="java.sql.Timestamp">thePersistInfo.modifyStamp</column>
                <object alias="Document" heading="Modifier Full Name" propertyName="modifierFullName">
                    <property name="modifierFullName"/>
                </object>
                <object alias="Document" heading="Modifier EMail" propertyName="modifierEMail">
                    <property name="modifierEMail"/>
                </object>
                <column alias="Document" heading="Created"
                    propertyName="createTimestamp" type="java.sql.Timestamp">thePersistInfo.createStamp</column>
                <object alias="Document" heading="Creator Full Name" propertyName="creatorFullName">
                    <property name="creatorFullName"/>
                </object>
                <object alias="Document" heading="Creator EMail" propertyName="creatorEMail">
                    <property name="creatorEMail"/>
                </object>
                <object alias="Document" heading="Context Name" propertyName="container.name">
                    <property name="container">
                        <property name="name"/>
                    </property>
                </object>
                <object alias="Document" heading="Folder Path" propertyName="folderPath">
                    <property name="folderPath"/>
                </object>
            </select>
            <from>
                <table alias="Document">wt.doc.WTDocument</table>
            </from>
            <where>
                <compositeCondition type="and">
                    <condition>
                        <operand>
                            <column alias="Document"
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
                <orderByItem type="desc">
                    <columnTarget heading="Last Modified"/>
                </orderByItem>
            </orderBy>
        </query>
    </statement>
</qml>
