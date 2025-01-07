/**
 * @jest-environment jsdom
 */
import { render, screen } from '@testing-library/react';
import HomeText from '../src/app/HomeText';

test('renders the text "Page created for exercises in setting up github actions"', () => {
  render(<HomeText />);
  
  const text = screen.getByText(/Page created for exercises in setting up github actions/i);
  
  expect(text).toBeInTheDocument();
});
