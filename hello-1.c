#include <linux/init.h>
#include <linux/module.h>
#include <linux/printk.h>

static int __init hello_1_tmz_init(void) {
   pr_info("Hello World\n");
   return 0;
}

static void __exit hello_1_tmz_exit(void) {
    pr_info("Goodbye \n");
}

module_init(hello_1_tmz_init);
module_exit(hello_1_tmz_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Tomaz Canabrava");
MODULE_VERSION("1.0");
MODULE_DESCRIPTION("A Hello World in Kernel Space");
