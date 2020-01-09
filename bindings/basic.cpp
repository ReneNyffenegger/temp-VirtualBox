//
//    https://stackoverflow.com/questions/6705396/undefined-reference-to-imp-coinitialize4
//
//    g++ -I E:\vbox\mscom\include -Wall helloworld.cpp -o helloworld.exe -lole32 -loleaut32
//

//#include "VirtualBox.h"

#include "rpc.h"
#include 

int main(int argc, char *argv[])
{
     HRESULT rc;
 //      IVirtualBox *virtualBox;

      do
        {
            /* Initialize the COM subsystem. */
            CoInitialize(NULL);

            /* Instantiate the VirtualBox root object. */
         //   rc = CoCreateInstance(CLSID_VirtualBox,       /* the VirtualBox base object */
         //                        NULL,                   /* no aggregation */
         //                         CLSCTX_LOCAL_SERVER,    /* the object lives in a server process on this machine */
          //                        IID_IVirtualBox,        /* IID of the interface */
         //                         (void**)&virtualBox);

            if (!SUCCEEDED(rc))
            {
                printf("Error creating VirtualBox instance! rc = 0x%x\n", rc);
                break;
            }


        } while (0);

        //CoUninitialize();
        return 0;
    printf("Hello, world\n");

    return 0;
