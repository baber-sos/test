# SPADE Audit reporter test cases #

A project for testing Linux Audit reporter in **SPADE** project [documentation](https://github.com/ashish-gehani/SPADE/wiki).

The goal of the project is to test all cases handled in the Linux Audit reporter in **SPADE** by writing C code which would generate audit logs (consumed by Audit reporter) and then confirming the output is as expected.

A test case is basically a system call invocation, or invocations of multiple system calls in a specific order.

The system calls to be used are limited and defined by the scope of Audit reporter as documented.

--- 
