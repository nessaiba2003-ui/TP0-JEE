<%@ include file="header.jsp" %>

<div class="jumbotron text-center fade-in">
    <div class="mb-4">
        <i class="fa-solid fa-cube fa-5x" style="color: var(--accent-red); filter: drop-shadow(0 0 15px var(--accent-glow));"></i>
    </div>
    <h1 class="display-4">Système <span style="background: var(--gradient-primary); -webkit-background-clip: text; -webkit-text-fill-color: transparent;">Lumina Inventory</span></h1>
    <p class="lead mt-3 text-muted">Une plateforme d'excellence pour la gestion intelligente de vos ressources et utilisateurs.</p>
    
    <hr class="my-4" style="width: 100px; margin: auto; border-top: 2px solid var(--accent-red);">
    <p class="text-muted mb-5">Découvrez une interface intuitive conçue pour la performance.</p>

    <div class="row">
        <div class="col-md-6 mb-4">
            <div class="card h-100 border-0">
                <div class="card-header text-center pt-4 pb-3">
                    <i class="fa-solid fa-user-gear fa-3x mb-3" style="color: var(--accent-red);"></i>
                    <h4 class="mb-0">Utilisateurs</h4>
                </div>
                <div class="card-body text-center d-flex flex-column">
                    <p class="text-muted flex-grow-1">Administration complète des comptes utilisateurs, permissions et profils système.</p>
                    <div class="mt-4">
                        <a class="btn btn-primary btn-block mb-2" href="<%= request.getContextPath() %>/users" role="button">
                            <i class="fa-solid fa-fingerprint mr-2"></i> Accéder aux Comptes
                        </a>
                        <a class="btn btn-secondary btn-sm" href="<%= request.getContextPath() %>/user-form" role="button">
                            <i class="fa-solid fa-plus mr-1"></i> Nouveau Profil
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6 mb-4">
            <div class="card h-100 border-0">
                <div class="card-header text-center pt-4 pb-3">
                    <i class="fa-solid fa-microchip fa-3x mb-3" style="color: var(--accent-red);"></i>
                    <h4 class="mb-0">Produits</h4>
                </div>
                <div class="card-body text-center d-flex flex-column">
                    <p class="text-muted flex-grow-1">Suivi en temps réel de votre stock, gestion des prix et optimisation de l'inventaire.</p>
                    <div class="mt-4">
                        <a class="btn btn-primary btn-block mb-2" href="<%= request.getContextPath() %>/products" role="button">
                            <i class="fa-solid fa-chart-line mr-2"></i> Consulter le Stock
                        </a>
                        <a class="btn btn-secondary btn-sm" href="<%= request.getContextPath() %>/product-form" role="button">
                            <i class="fa-solid fa-plus mr-1"></i> Nouveau Produit
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="footer.jsp" %>