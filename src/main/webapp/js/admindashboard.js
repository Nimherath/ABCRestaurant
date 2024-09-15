document.addEventListener('DOMContentLoaded', () => {
    const managePackageForm = document.getElementById('managePackageForm');
    const viewPackagesBtn = document.getElementById('viewPackagesBtn');
    const deletePackageBtn = document.getElementById('deletePackageBtn');
    const updatePackageBtn = document.getElementById('updatePackageBtn');
    const packageList = document.getElementById('packageList');

    managePackageForm.addEventListener('submit', function (event) {
        event.preventDefault();
        const packageId = document.getElementById('packageId').value;
        const packageName = document.getElementById('packageName').value;
        const packageDescription = document.getElementById('packageDescription').value;
        const packagePrice = document.getElementById('packagePrice').value;

        const action = packageId ? 'update' : 'add';

        fetch('ManagePackageServlet', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded',
            },
            body: new URLSearchParams({
                action: action,
                packageId: packageId,
                packageName: packageName,
                packageDescription: packageDescription,
                packagePrice: packagePrice,
            }),
        })
        .then(response => response.text())
        .then(result => {
            alert(result);
            fetchPackages();
            managePackageForm.reset();
        })
        .catch(error => console.error('Error:', error));
    });

    viewPackagesBtn.addEventListener('click', () => {
        fetchPackages();
    });

    deletePackageBtn.addEventListener('click', () => {
        const packageId = prompt('Enter the package ID to delete:');
        
        if (packageId) {
            fetch('ManagePackageServlet', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded',
                },
                body: new URLSearchParams({
                    action: 'delete',
                    packageId: packageId,
                }),
            })
            .then(response => response.text())
            .then(result => {
                alert(result);
                fetchPackages();
            })
            .catch(error => console.error('Error:', error));
        }
    });

    updatePackageBtn.addEventListener('click', () => {
        const packageId = prompt('Enter the package ID to update:');
        
        if (packageId) {
            fetch(`ManagePackageServlet?action=get&packageId=${packageId}`)
            .then(response => response.json())
            .then(packageData => {
                document.getElementById('packageId').value = packageData.packageId;
                document.getElementById('packageName').value = packageData.packageName;
                document.getElementById('packageDescription').value = packageData.packageDescription;
                document.getElementById('packagePrice').value = packageData.packagePrice;
            })
            .catch(error => console.error('Error:', error));
        }
    });

    function fetchPackages() {
        fetch('ManagePackageServlet?action=view')
        .then(response => response.json())
        .then(packages => {
            packageList.innerHTML = '';
            packages.forEach(pkg => {
                const packageItem = document.createElement('div');
                packageItem.className = 'package-item';
                packageItem.innerHTML = `
                    <h3>${pkg.packageName}</h3>
                    <p>${pkg.packageDescription}</p>
                    <p>Price: $${pkg.packagePrice}</p>
                `;
                packageList.appendChild(packageItem);
            });
        })
        .catch(error => {
            packageList.innerHTML = '<p>Failed to load packages.</p>';
            console.error('Error:', error);
        });
    }
    document.getElementById('refreshReservationsBtn').addEventListener('click', function() {
    fetchReservations();
});

function fetchReservations() {
    fetch('ManageReservationsServlet')  // Adjust this URL to your servlet or API endpoint
        .then(response => response.json())
        .then(data => {
            const tableBody = document.querySelector('#reservationsTable tbody');
            tableBody.innerHTML = '';
            data.forEach(reservation => {
                const row = document.createElement('tr');
                row.innerHTML = `
                    <td>${reservation.id}</td>
                    <td>${reservation.name}</td>
                    <td>${reservation.email}</td>
                    <td>${reservation.phone}</td>
                    <td>${reservation.date}</td>
                    <td>${reservation.time}</td>
                    <td>${reservation.guests}</td>
                    <td>${reservation.status}</td>
                    <td>
                        <button onclick="editReservation(${reservation.id})">Edit</button>
                        <button onclick="deleteReservation(${reservation.id})">Delete</button>
                    </td>
                `;
                tableBody.appendChild(row);
            });
        })
        .catch(error => console.error('Error fetching reservations:', error));
}

function deleteReservation(id) {
    if (confirm('Are you sure you want to delete this reservation?')) {
        fetch(`ManageReservationsServlet?id=${id}`, { method: 'DELETE' })
            .then(response => response.json())
            .then(data => {
                alert('Reservation deleted successfully');
                fetchReservations(); // Refresh the table
            })
            .catch(error => console.error('Error deleting reservation:', error));
    }
}

function editReservation(id) {
    // Implement logic to show a form or modal for editing the reservation
    alert('Edit functionality is not implemented yet.');
}

});
