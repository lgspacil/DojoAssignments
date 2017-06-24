import { DBoardPage } from './app.po';

describe('d-board App', () => {
  let page: DBoardPage;

  beforeEach(() => {
    page = new DBoardPage();
  });

  it('should display welcome message', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('Welcome to app!!');
  });
});
