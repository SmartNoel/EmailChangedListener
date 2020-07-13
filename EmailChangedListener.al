// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

codeunit 50103 EmailChangedListener
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Page, Page::"Customer Card", 'OnAfterValidateEvent', 'E-Mail', true, true)]
    local procedure OnEmailChanged(var rec: Record Customer)
    begin
        Message('Email Changed to %1', rec."E-Mail");
    end;
}