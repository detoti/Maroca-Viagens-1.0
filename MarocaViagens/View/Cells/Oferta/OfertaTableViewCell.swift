//
//  OfertaTableViewCell.swift
//  MarocaViagens
//
//  Created by André Toti on 05/01/23.
//

import UIKit

class OfertaTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlets
    
    @IBOutlet var viagemImages: [UIImageView]!
    
    @IBOutlet var tituloViagemLabels: [UILabel]!
    
    @IBOutlet var subtituloViagemLabels: [UILabel]!
    
    @IBOutlet var precoSemDescontoLabels: [UILabel]!
    
    @IBOutlet var precoViagemLabels: [UILabel]!
    
    @IBOutlet var statusCancelamentoViagemLabels: [UILabel]!
    
    @IBOutlet var fundoViews: [UIView]!
    
    // MARK: Funcs
    
    func configuraCelula(_ viagens: [Viagem]?) {
        guard let listaDeViagem = viagens else { return }
        
        for i in 0..<listaDeViagem.count {
            setOutlets(i, viagem: listaDeViagem[i])
        }
        
        fundoViews.forEach { viewAtual in
            viewAtual.addSombra()
        }
    }
    
    func setOutlets(_ index: Int, viagem: Viagem) {
        let imageOutlet = viagemImages[index]
        imageOutlet.image = UIImage(named: viagem.asset)
        
        let tituloOutlet = tituloViagemLabels[index]
        tituloOutlet.text = viagem.titulo
        
        let subtituloOutlet = subtituloViagemLabels[index]
        subtituloOutlet.text = viagem.subtitulo
        
        let cancelamentoOutlet = statusCancelamentoViagemLabels[index]
        cancelamentoOutlet.text = viagem.cancelamento
        
        let precoSemDescontoOutlet = precoSemDescontoLabels[index]
        precoSemDescontoOutlet.text = "A partir de R$ \(viagem.precoSemDesconto)"
        
        let precoOutlet = precoViagemLabels[index]
        precoOutlet.text = "R$ \(viagem.preco)"
       
        }
        
    }
    
    

