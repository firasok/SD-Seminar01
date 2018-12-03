pageextension 50101 "CSD ResourceListExt" extends "Resource List"

{
    layout
    {
        modify(Type)
        {
            Visible = showtype;
        }
        addafter(Type)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {
            }
            field("CSD Maximum Participants"; "CSD Maximum Participants")
            {
                Visible = ShowMaxField;
            }
        }
    }
    trigger OnOpenPage();
    begin
        ShowType := (GetFilter(Type) = '');
        ShowMaxField :=
        (GetFilter(Type) = format(Type::machine));
    end;

    var
        [InDataSet]
        ShowType: Boolean;
        [InDataSet]
        ShowMaxField: Boolean;
}