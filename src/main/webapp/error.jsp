<%@ include file="header.jsp" %>

<div class="row align-items-center justify-content-center" style="min-height: 50vh;">
    <div class="col-md-6 text-center">
        <i class="fa-solid fa-triangle-exclamation fa-5x mb-4" style="color: var(--danger-glow); text-shadow: 0 0 15px rgba(251, 113, 133, 0.5);"></i>
        <div class="alert alert-danger shadow" role="alert" style="background-color: rgba(244, 63, 94, 0.1); border-color: rgba(244, 63, 94, 0.2); color: var(--text-main);">
            <h3 class="mb-3 text-white"><i class="fa-solid fa-bug mr-2"></i>Erreur</h3>
            <p>Une erreur s'est produite. Veuillez réessayer plus tard ou contacter l'administrateur.</p>
            <hr style="border-color: rgba(244, 63, 94, 0.2);">
            <a href="<%= request.getContextPath() %>/" class="btn btn-danger mt-2">
                <i class="fa-solid fa-house mr-2"></i>Retour à l'accueil
            </a>
        </div>
    </div>
</div>

<%@ include file="footer.jsp" %>