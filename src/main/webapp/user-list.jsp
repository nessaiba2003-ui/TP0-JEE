<%@ include file="header.jsp" %>
<div class="main-content fade-in">
    <div class="d-flex justify-content-between align-items-end mb-5">
        <div>
            <h1 class="font-weight-bold mb-2" style="color: white; font-size: 2.8rem; letter-spacing: -1px;">Gestion des <span style="color: var(--accent-red); text-shadow: 0 0 20px var(--accent-glow);">Opérateurs</span></h1>
            <p class="text-muted mb-0" style="font-size: 1.1rem; opacity: 0.7;">Contrôle et administration du personnel système Lumina</p>
        </div>
        <a href="user-form" class="btn btn-premium">
            <i class="fa-solid fa-user-plus mr-3"></i> Ajouter un Membre
        </a>
    </div>

    <div class="mt-5">
        <div class="table-responsive">
            <table class="table">
                <thead>
                    <tr>
                        <th>Identifiant</th>
                        <th>Opérateur</th>
                        <th>Contact Professionnel</th>
                        <th>Date d'admission</th>
                        <th class="text-right">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="user" items="${users}">
                        <tr>
                            <td class="text-muted font-weight-bold" style="font-family: 'Space Grotesk', sans-serif;">#<c:out value="${user.id}" /></td>
                            <td>
                                <div class="d-flex align-items-center">
                                    <div class="mr-3" style="width: 40px; height: 40px; border-radius: 12px; background: var(--gradient-primary); display: flex; align-items: center; justify-content: center; font-weight: 800; font-size: 1.2rem;">
                                        ${user.firstName.substring(0,1)}
                                    </div>
                                    <div class="font-weight-bold h6 mb-0" style="color: white;"><c:out value="${user.firstName}" /> <c:out value="${user.lastName}" /></div>
                                </div>
                            </td>
                            <td>
                                <span class="text-muted small font-weight-bold"><i class="fa-solid fa-envelope mr-2" style="color: var(--accent-red);"></i><c:out value="${user.email}" /></span>
                            </td>
                            <td>
                                <span class="small tracking-widest text-muted"><i class="fa-solid fa-calendar-alt mr-2"></i><c:out value="${user.createdAt}" /></span>
                            </td>
                            <td class="text-right">
                                <a href="user-form?action=edit&id=${user.id}" class="btn-ghost btn-sm mr-2" style="padding: 0.6rem 1rem;" title="Modifier">
                                    <i class="fa-solid fa-user-pen"></i>
                                </a>
                                <a href="delete-user?id=${user.id}" class="btn-ghost btn-sm" style="padding: 0.6rem 1rem; border-color: rgba(239, 68, 68, 0.2);" onclick="return confirm('Retirer cet opérateur du système ?')" title="Révoquer l'accès">
                                    <i class="fa-solid fa-user-xmark" style="color: var(--accent-red);"></i>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<%@ include file="footer.jsp" %>