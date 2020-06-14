//
//  HealthViewModel.swift
//  Trucker Health
//
//  Created by Marcos Lacerda on 14/06/20.
//  Copyright © 2020 CCR. All rights reserved.
//

import UIKit

struct HealthViewModel {
    
    internal var items = [Health]()
    
    init() {
        items.append(makeHealthNoticieOne())
        items.append(makeHealthNoticieTwo())
        items.append(makeHealthNoticieThree())
    }
    
    // MARK: - Private methods
    
    private func makeHealthNoticieOne() -> Health {
        return Health(photo: UIImage.init(named: "exercise")!, title: "Veja 10 exercícios físicos que você pode realizar durante as paradas.", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam non nunc id ex sagittis posuere rhoncus non ligula. Duis id tellus libero. Curabitur tempus lacinia dolor, ac vulputate nisl aliquet at. Nunc est eros, lacinia vitae condimentum vel, auctor eu tortor. Nulla euismod gravida leo, et scelerisque ipsum vulputate at. Vivamus tristique quam in elit pretium dictum. Aenean eu lectus eget elit vestibulum pharetra. Fusce quis interdum elit. Maecenas ipsum tortor, vestibulum in turpis sit amet, aliquam hendrerit tellus. Vivamus non placerat ligula, id pellentesque ligula. In sodales tempor consequat. Pellentesque vel rhoncus sem, non pretium nisi. Pellentesque convallis, magna id viverra ornare, nisl neque efficitur ex, eu aliquam dolor dolor eu purus. Suspendisse non accumsan nulla, vel dapibus lectus. Sed vitae nisl ante.\n\nAenean non condimentum purus. Ut sit amet elit nec ligula egestas sodales a id augue. Integer rutrum augue non lorem volutpat, sed bibendum quam posuere. Praesent euismod lacus id purus molestie, vitae varius mi ultricies. Nam rhoncus eleifend mi in euismod. Ut hendrerit felis vel lorem tincidunt, sed ullamcorper lorem lacinia. Mauris aliquet nibh ac urna commodo, et luctus tellus egestas. Phasellus sit amet dui nibh. Proin vulputate accumsan accumsan. Nulla in vehicula risus. Fusce at semper lacus, auctor aliquet lacus. Integer quis nisl vel ligula varius hendrerit. Fusce accumsan gravida mauris, ut varius orci congue tristique. Nunc tellus tellus, mollis sit amet pretium ac, porttitor sed nisi.")
    }
    
    private func makeHealthNoticieTwo() -> Health {
        return Health(photo: UIImage.init(named: "salad")!, title: "Confira 5 dicas de como manter uma alimentação saudável na estrada.", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam non nunc id ex sagittis posuere rhoncus non ligula. Duis id tellus libero. Curabitur tempus lacinia dolor, ac vulputate nisl aliquet at. Nunc est eros, lacinia vitae condimentum vel, auctor eu tortor. Nulla euismod gravida leo, et scelerisque ipsum vulputate at. Vivamus tristique quam in elit pretium dictum. Aenean eu lectus eget elit vestibulum pharetra. Fusce quis interdum elit. Maecenas ipsum tortor, vestibulum in turpis sit amet, aliquam hendrerit tellus. Vivamus non placerat ligula, id pellentesque ligula. In sodales tempor consequat. Pellentesque vel rhoncus sem, non pretium nisi. Pellentesque convallis, magna id viverra ornare, nisl neque efficitur ex, eu aliquam dolor dolor eu purus. Suspendisse non accumsan nulla, vel dapibus lectus. Sed vitae nisl ante.")
    }
    
    private func makeHealthNoticieThree() -> Health {
        return Health(photo: UIImage.init(named: "meditation")!, title: "A meditação ajuda a relaxar, diminuir o estresse e aumentar a concentração, veja algumas dicas.", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam non nunc id ex sagittis posuere rhoncus non ligula. Duis id tellus libero. Curabitur tempus lacinia dolor, ac vulputate nisl aliquet at. Nunc est eros, lacinia vitae condimentum vel, auctor eu tortor. Nulla euismod gravida leo, et scelerisque ipsum vulputate at. Vivamus tristique quam in elit pretium dictum. Aenean eu lectus eget elit vestibulum pharetra. Fusce quis interdum elit. Maecenas ipsum tortor, vestibulum in turpis sit amet, aliquam hendrerit tellus. Vivamus non placerat ligula, id pellentesque ligula. In sodales tempor consequat. Pellentesque vel rhoncus sem, non pretium nisi. Pellentesque convallis, magna id viverra ornare, nisl neque efficitur ex, eu aliquam dolor dolor eu purus. Suspendisse non accumsan nulla, vel dapibus lectus. Sed vitae nisl ante.\n\nAenean non condimentum purus. Ut sit amet elit nec ligula egestas sodales a id augue. Integer rutrum augue non lorem volutpat, sed bibendum quam posuere. Praesent euismod lacus id purus molestie, vitae varius mi ultricies. Nam rhoncus eleifend mi in euismod. Ut hendrerit felis vel lorem tincidunt, sed ullamcorper lorem lacinia. Mauris aliquet nibh ac urna commodo, et luctus tellus egestas. Phasellus sit amet dui nibh. Proin vulputate accumsan accumsan. Nulla in vehicula risus. Fusce at semper lacus, auctor aliquet lacus. Integer quis nisl vel ligula varius hendrerit. Fusce accumsan gravida mauris, ut varius orci congue tristique. Nunc tellus tellus, mollis sit amet pretium ac, porttitor sed nisi.\n\nAenean non condimentum purus. Ut sit amet elit nec ligula egestas sodales a id augue. Integer rutrum augue non lorem volutpat, sed bibendum quam posuere. Praesent euismod lacus id purus molestie, vitae varius mi ultricies. Nam rhoncus eleifend mi in euismod. Ut hendrerit felis vel lorem tincidunt, sed ullamcorper lorem lacinia. Mauris aliquet nibh ac urna commodo, et luctus tellus egestas. Phasellus sit amet dui nibh. Proin vulputate accumsan accumsan. Nulla in vehicula risus. Fusce at semper lacus, auctor aliquet lacus. Integer quis nisl vel ligula varius hendrerit. Fusce accumsan gravida mauris, ut varius orci congue tristique. Nunc tellus tellus, mollis sit amet pretium ac, porttitor sed nisi.")
    }
    
}
