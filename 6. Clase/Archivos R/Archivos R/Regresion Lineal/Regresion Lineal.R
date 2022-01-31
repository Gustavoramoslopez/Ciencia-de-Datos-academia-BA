str(trees)

## Analisis de Regresion entre Volumen y Girth

## Test para el coef. de correlacion
cor.test(x=trees$Girth, y=trees$Volume, method = "pearson")

## Ajusto la regresion lineal
Reg_Lineal_G <- lm(Volume ~ Girth, data=trees)
summary(Reg_Lineal_G)

## Grafico
plot(x=trees$Girth, y=trees$Volume, main="Volume ~ Girth")
abline(Reg_Lineal_G)

##############################

## Analisis de Regresion entre Volumen y Altura

## Test para el coef. de correlacion
cor.test(x=trees$Height, y=trees$Volume,  method = "pearson")

## Ajusto la regresion lineal
Reg_Lineal_H <- lm(Volume  ~ Height, data=trees)
summary(Reg_Lineal_H)

## Grafico
plot(x=trees$Height, y=trees$Volume, main="Volume ~ Height")
abline(Reg_Lineal_H)
