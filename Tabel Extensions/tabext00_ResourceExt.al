tableextension 50100 "CSD ResourceExt" extends Resource
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate()
            begin
                rec.TestField("Unit Cost");
            end;

        }
        modify(Type)
        {
            OptionCaption = 'Instructor,Room';
        }

        field(50101; "CSD Resource Type"; Option)
        {
            Caption = 'Resouce Type';
            OptionMembers = "Internal","External";
            OptionCaption = 'Internal,External';
        }
        field(50102; "CSD Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
        }
        field(50103; "CSD Quantity Per Day"; Decimal)
        {
            Caption = '"CSD Quantity Per Day';
        }

    }

}
