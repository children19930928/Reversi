;heibaiqi_main
;Author: wangningchen
;Create: 2015/3/18
;Last modify: 2015/3/18
;Main logic entry

;--------------------------------------------------------------------------

      include \masm32\include\masm32rt.inc

        .data


;--------------------------------------------------------------------------

        .code

main proc
		local turn:DWORD 
		local map[64]:DWORD
		local black_count:DWORD
		local white_count:DWORD
init:
		invoke init, addr turn, addr map, addr black_count, addr white_count
		mov retval, eax
		cmp eax, 0
		jne fin
fin:
		exit
main endp
end main