<%@ include file="header.jsp" %>
<div class="main-content fade-in col-lg-8 mx-auto">
    <div class="d-flex justify-content-between align-items-end mb-5">
        <div>
            <c:if test="${user != null}">
                <h1 class="font-weight-bold mb-2" style="color: white; font-size: 2.5rem;">Édition <span style="color: var(--accent-red); text-shadow: 0 0 15px var(--accent-glow);">Profil</span></h1>
            </c:if>
            <c:if test="${user == null}">
                <h1 class="font-weight-bold mb-2" style="color: white; font-size: 2.5rem;">Nouveau <span style="color: var(--accent-red); text-shadow: 0 0 15px var(--accent-glow);">Membre</span></h1>
            </c:if>
            <p class="text-muted mb-0" style="font-size: 1.1rem; opacity: 0.7;">Configuration des privilèges et accès utilisateur</p>
        </div>
        <a href="users" class="btn btn-ghost px-4">
            <i class="fa-solid fa-chevron-left mr-2"></i> Retour
        </a>
    </div>

    <div class="premium-card shadow-2xl">
        <c:if test="${user != null}">
            <form action="update-user" method="post">
            <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
        </c:if>
        <c:if test="${user == null}">
            <form action="create-user" method="post">
        </c:if>

            <div class="row">
                <div class="col-md-6 form-group mb-4">
                    <label for="firstName">Prénom</label>
                    <input type="text" class="form-control" id="firstName" name="firstName" value="<c:out value='${user.firstName}' />" required placeholder="ex: Marc">
                </div>

                <div class="col-md-6 form-group mb-4">
                    <label for="lastName">Nom</label>
                    <input type="text" class="form-control" id="lastName" name="lastName" value="<c:out value='${user.lastName}' />" required placeholder="ex: Vasseur">
                </div>
            </div>

            <div class="form-group mb-4">
                <label for="email">E-mail Professionnel</label>
                <div class="position-relative">
                    <i class="fa-solid fa-at position-absolute" style="left: 1.2rem; top: 1.2rem; color: var(--accent-red); opacity: 0.5;"></i>
                    <input type="email" class="form-control pl-5" id="email" name="email" value="<c:out value='${user.email}' />" required placeholder="m.vasseur@lumina.com">
                </div>
            </div>

            <div class="form-group mb-5">
                <label for="password">Clé d'Accès (Mot de passe)</label>
                <div class="position-relative">
                    <i class="fa-solid fa-key position-absolute" style="left: 1.2rem; top: 1.2rem; color: var(--accent-red); opacity: 0.5;"></i>
                    <input type="password" class="form-control pl-5" id="password" name="password" <c:if test="${user == null}">required</c:if> placeholder="••••••••••••">
                </div>
                <c:if test="${user != null}">
                    <div class="mt-3 p-3 rounded" style="background: rgba(239, 68, 68, 0.05); border: 1px dashed rgba(239, 68, 68, 0.2);">
                        <p class="small mb-0 text-muted">
                            <i class="fa-solid fa-shield-halved mr-2" style="color: var(--accent-red);"></i> Laissez vide pour ne pas modifier le mot de passe actuel.
                        </p>
                    </div>
                </c:if>
            </div>

            <div class="border-top pt-5 mt-4" style="border-color: rgba(255, 255, 255, 0.05) !important;">
                <button type="submit" class="btn btn-premium btn-block py-4">
                    <i class="fa-solid fa-fingerprint mr-3"></i> Confirmer l'Enregistrement System
                </button>
            </div>
        </form>
    </div>
</div>
<%@ include file="footer.jsp" %>