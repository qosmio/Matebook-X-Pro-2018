//
// Add SLPB device (Search for 'PNP0C0E', if it is missing, add SSDT-SLPB)
// Credit to jsassu20 (OC-little)
//
#ifndef NO_DEFINITIONBLOCK 
DefinitionBlock("", "SSDT", 2, "hack", "PNP0C0E", 0)
{
#endif
    //search PNP0C0E
    Scope (\_SB)
    {
        Device (SLPB)
        {
            Name (_HID, EisaId ("PNP0C0E"))
            Method (_STA, 0, NotSerialized)
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif