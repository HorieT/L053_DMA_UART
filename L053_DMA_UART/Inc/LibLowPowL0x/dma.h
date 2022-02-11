/*
 * dma.h
 *
 *  Created on: Jan 20, 2022
 *      Author: tomoy
 */

#ifndef DMA_H_
#define DMA_H_

#include <LibLowPowL0x/core.h>


typedef enum{
	SizeByte,
	SizeHWord,
	SizeWord
}DMA_size;
typedef enum {
	ToMem,
	ToPeripheral
}DMA_Direction;

void DMA_set(DMA_Channel_TypeDef* DMA_ch, void* address_p, void* address_m){
	DMA_ch->CPAR = (uint32_t)(address_p);
	DMA_ch->CMAR = (uint32_t)(address_m);
}
void DMA_start(DMA_Channel_TypeDef* DMA_ch, DMA_size p_size, DMA_size m_size, DMA_Direction dir, uint32_t size, bool circular, bool inc_p){
	DMA_ch->CCR &= ~DMA_CCR_EN;
	DMA_ch->CNDTR = size;
	DMA_ch->CCR =
				(m_size << DMA_CCR_MSIZE_Pos) |
				(p_size << DMA_CCR_PSIZE_Pos) |
				(DMA_CCR_MINC) |
				(inc_p << DMA_CCR_PINC_Pos) |
				(circular << DMA_CCR_CIRC_Pos) |
				(dir << DMA_CCR_DIR_Pos) |
				(DMA_CCR_EN);
}

#endif /* DMA_H_ */
