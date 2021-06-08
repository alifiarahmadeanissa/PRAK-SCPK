function [RasioKonsistensi] = HitungKonsistensiAHP(relasiAntarKriteria)
indeksAcak = [0 0 0.50 0.8 1.10 1.50 1.30 1.60 1.50 1.30];
[op, jumlahKriteria] = size(relasiAntarKriteria);
[opp, lambda] = eig(relasiAntarKriteria);
maksLambda = max(max(lambda));
IndeksKonsistensi = (maksLambda - jumlahKriteria)/(jumlahKriteria-1);
RasioKonsistensi = IndeksKonsistensi/indeksAcak(1,jumlahKriteria);
if RasioKonsistensi > 0.10
    str = 'Rasio Konsistensi adalah %% %1.2f. Matriks yang dievaluasi tidak konsisten!';
    str = sprintf(str,RasioKonsistensi);
    disp(str);
end
end
