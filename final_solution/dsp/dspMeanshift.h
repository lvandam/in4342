#include <std.h>
#include <IQmath_inline.h>

#define MODEL          1
#define CANDIDATE      2

Void initTarget(Uint8 matIndex);

Void initWeight(float* CalWeight);

Void HC_Epanechnikov_kernel(Void);

void HC_pdf_representation_target(Uint8 colorIndex, Uint8* color);

void pdf_representation(Uint8* color, Uint16* rect);

void CalcWeight(Uint8 colorIndex, Uint8* color, Uint16 *rect, float* CalWeight);
