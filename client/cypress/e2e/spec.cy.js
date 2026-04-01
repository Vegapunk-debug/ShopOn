describe('ShopSmart E2E Navigation', () => {
  it('successfully loads the app and displays title', () => {
    cy.visit('/');
    cy.contains('ShopSmart').should('be.visible');
  });
});
