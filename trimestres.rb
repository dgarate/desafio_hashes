ventas = {
Enero: 15000,
Febrero: 22000,
Marzo: 12000,
Abril: 17000,
Mayo: 81000,
Junio: 13000,
Julio: 21000,
Agosto: 41200,
Septiembre: 25000,
Octubre: 21500,
Noviembre: 91000,
Diciembre: 21000
}

qtrs = { 
    Q1: [:Enero,:Febrero,:Marzo],
    Q2: [:Abril,:Mayo,:Junio],
    Q3: [:Julio,:Agosto,:Septiembre],
    Q4: [:Octubre,:Noviembre,:Diciembre]
}

months = qtrs.values
qtr = qtrs.keys

vta_qtr = []

months.each do |i|
    sum = 0
    i.each do |x|
       if match = ventas[x]
        sum += ventas[x]
        end
    end
    vta_qtr << sum
    
    end

hash = {}

qtr.count.times do |i|
    key = qtr[i]
    val = vta_qtr[i]
    hash[key] = val
end

print hash