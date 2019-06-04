.syntax unified

.global	read_sp
read_sp:
	mrs r0, sp ; 
	bx lr ;

.global	read_msp
read_msp:
	mrs r0, msp ;
	bx lr ; 

.global	read_psp
read_psp:
	mrs r0, psp ;
	bx lr ; 

.global	read_ctrl
read_ctrl:
	mrs r0, CONTROL ;
	bx lr ;

.global	start_user
start_user:
	movs lr, r0 ;
	msr psp, r1 ;

	movs r3, 0b11 ;
	msr CONTROL, r3 ;
	isb ;

	bx lr ;

.global	sw_priv
sw_priv:
	movs r4, 0b11 ;
	msr CONTROL, r4 ;
	isb ;

	bx lr ;
